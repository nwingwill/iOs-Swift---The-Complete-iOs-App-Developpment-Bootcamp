//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    let eggTime = ["Soft": 3,"Medium" : 4, "Hard" : 7]
    
    var totalTime = 0
    var player : AVAudioPlayer!

    var timer = Timer()

    var secondPast = 0
    
    var likeYourEggs = ""
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainTitleLabel: UILabel!

    override func viewDidLoad() {
        progressBar.isHidden = true
        titleLabel.text = ""
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.isHidden = false
        let  hardness = sender.currentTitle!
        totalTime = eggTime[hardness]!
        progressBar.progress = 0.0
        secondPast = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    if hardness == "Soft" {
        
        likeYourEggs = "Soft"
        
    }else if hardness == "Medium" {
            
            likeYourEggs = "Medium"
            
    } else {
            likeYourEggs = "Hard"
    }
        
        totalTime = eggTime[hardness]!

        
    }
    
    @objc func updateTimer() {
        
        if secondPast < totalTime {
            
            secondPast += 1
            progressBar.progress =  Float (secondPast) / Float (totalTime)
            
            print(Float (secondPast / totalTime))
            
            
        } else {
            
            timer.invalidate()
            progressBar.isHidden = true
            mainTitleLabel.text = "How do you like your eggs? \(likeYourEggs)"
            titleLabel.text = "Done..!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            secondPast = 0
            totalTime = 0
        }
    
    }
}
