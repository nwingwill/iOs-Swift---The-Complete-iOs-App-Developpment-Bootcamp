//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let story0 = "You see fork in the road"
    var story0 = StoryBrain.init(brainControl: 0)
//    let choice1 = self.story0.loadBasicControl(ch: 0)
//    let choice2 = "Take a right"
    
    var ch1 : Int = 1
    var ch2 : Int = 2
    

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        storyLabel.text = story0.loadBasicResult(brainControl: 0)
        choice1Button.setTitle("\(story0.getResultText(ch: 1))", for: UIControl.State.normal)
        choice2Button.setTitle("\(story0.getResultText(ch: 2))", for: UIControl.State.normal)
        
        
//        print(StoryBrain.init().loadBasicData())

    }


    @IBAction func choiceMade(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
        print(story0.loadBasicResult(brainControl: ch1))
        if (sender.titleLabel?.text! == story0.loadBasicControl(ch: ch1)){
            
            storyLabel.text = story0.loadBasicResult(brainControl: ch1)
            choice1Button.setTitle("\(story0.loadBasicControl(ch: ch1))", for: UIControl.State.normal)
            choice2Button.setTitle("\(story0.loadBasicControl(ch: ch2))", for: UIControl.State.normal)
            
            print(sender.titleLabel!.text!)
            print(story0.brainControl)
        }else if (sender.titleLabel?.text! == story0.loadBasicControl(ch: ch2)){
            storyLabel.text = story0.loadBasicResult(brainControl: ch2)
            choice1Button.setTitle("\(story0.loadBasicControl(ch: ch1))", for: UIControl.State.normal)
            choice2Button.setTitle("\(story0.loadBasicControl(ch: ch2))", for: UIControl.State.normal)
            print(sender.titleLabel!.text!)
            ch1 += 1
            ch2 += 2
        }
    }
}

