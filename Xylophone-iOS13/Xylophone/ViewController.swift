//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// Capture key press for select sound
    /// - Parameter sender: capture key press and value key
    @IBAction func keyPressed(_ sender: UIButton) {
        
        let toneSound: String = sender.currentTitle!
        
        print(sender.backgroundColor!)
        print(sender.currentTitle!)
        
        //Change opacity on key press
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
        playSound(toneSound: toneSound)
    }
    
    func playSound(toneSound: String) {
        let url = Bundle.main.url(forResource: "\(toneSound)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

