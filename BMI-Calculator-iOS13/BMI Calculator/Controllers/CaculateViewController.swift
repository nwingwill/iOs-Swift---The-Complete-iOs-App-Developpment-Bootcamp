//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CaculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
//    var bmi : Float = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heigth = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heigth)m"

    }
    
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)kg"

    }
    
    @IBAction func calculatedPressed(_ sender: Any) {
        
        let heigth = heightSlider.value
        let weight = weightSlider.value
        
        //Formula para calcular indice de masa corporal
        calculatorBrain.calculateBMI(heigth: heigth, weight: weight)
//        bmi = weight / pow(heigth,2)
        

        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        self.present(secondVC, animated: true, completion: nil)
        
        
//
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            
        }
    }
    
}

