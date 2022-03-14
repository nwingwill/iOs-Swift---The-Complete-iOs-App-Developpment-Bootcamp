//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = K.appName
        
        ///Ejemplo de como realizar la animacion sin el pod CLTypingLabel
//        titleLabel.text = ""
//        var characterIndex = 0.0
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            ///Temporizador para que muestre craracter por caracater
//            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in
//
//                self.titleLabel.text?.append(letter)
//
//            }
//            characterIndex += 1
//
//        }
       
    }
    

}
