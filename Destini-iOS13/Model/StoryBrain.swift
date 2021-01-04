//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let storyPages = StoryPages()
    var currentPage: Story
    
    init() {
        currentPage = storyPages.StoryBook[0]
    }
    
    mutating func choiceMade(choice: String) {
        
        var nextStoryIdx: Int
        if (choice == "Choice1") {
            nextStoryIdx = currentPage.choice1Destination
        } else {
            nextStoryIdx = currentPage.choice2Destination
        }
        self.currentPage = storyPages.StoryBook[nextStoryIdx]
    }
    
    func getCurrentPage() -> Story {
        return currentPage
    }
}




