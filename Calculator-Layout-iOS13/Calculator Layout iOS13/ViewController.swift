//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var ifFinishedEditedNumber : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcButtonPresed(_ sender: UIButton) {
        
        ifFinishedEditedNumber = true

    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if ifFinishedEditedNumber {
                
                displayLabel.text = numValue
                ifFinishedEditedNumber = false
                
            } else {
                
                displayLabel.text = displayLabel.text! + numValue
                
            }
            
        }
        
    }
    
}

