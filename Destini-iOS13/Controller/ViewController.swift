//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        updateUI()
    }
    
    @IBAction func choicePressed(_ sender: UIButton) {
        
        let currentPage = storyBrain.getCurrentPage()
        if (sender.currentTitle == currentPage.choice1) {
            storyBrain.choiceMade(choice: "Choice1")
        } else {
            storyBrain.choiceMade(choice: "Choice2")
        }
        updateUI()

    }
    
    func updateUI() {
        
        let currentPage = storyBrain.getCurrentPage()
        choice1Button.setTitle(currentPage.choice1, for: .normal)
        choice2Button.setTitle(currentPage.choice2, for: .normal)
        storyLabel.text = currentPage.title
    }


}

