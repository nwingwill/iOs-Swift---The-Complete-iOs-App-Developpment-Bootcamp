//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var result : Float = 0.0
    var tipSelected : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        twentyPctButton.isSelected = true
    }
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        billTextField.endEditing(true)
        
        sender.isSelected = true
        tipSelected = sender.titleLabel?.text ?? "No tip Selected"
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        sender.maximumValue = 12
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
//        let splitValue = splitNumberLabel.text ?? "0"
        let splitValue = Float(splitNumberLabel.text ?? "0.0")
        let billValue = Float(billTextField.text ?? "0.0")
        
        
        if zeroPctButton.isSelected == true {
            result = ((Float(billValue ?? 0.0) * 0.0) + Float(billValue ?? 0.0)) / Float(splitValue ?? 0.0)
            print(result)
            
        }else if tenPctButton.isSelected == true {
            result = ((Float(billValue ?? 0.0) * 0.1) + Float(billValue ?? 0.0)) / Float(splitValue ?? 0.0)
            print(result)
            
        } else {
            result = ((Float(billValue ?? 0.0) * 0.2) + Float(billValue ?? 0.0)) / Float(splitValue ?? 0.0)
            
            print(result)
            
        }
        
        self.performSegue(withIdentifier: "showResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            
            let destinationViewController = segue.destination as! ResultsViewController
            destinationViewController.result = String(result)
            destinationViewController.people = splitNumberLabel.text ?? "Default"
            destinationViewController.tip = tipSelected
            
        }
    }
}

