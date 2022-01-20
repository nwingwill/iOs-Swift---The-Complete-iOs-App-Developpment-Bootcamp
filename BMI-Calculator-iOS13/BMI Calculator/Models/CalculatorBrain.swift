//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nestor Blanco on 9/16/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(heigth : Float, weight : Float) {
        
        let bmiValue = weight / pow(heigth,2)
        
        
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
            print("\(bmi?.advice ?? "")")
        } else if bmiValue > 18.5 && bmiValue <= 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            print("\(bmiValue)")
        }else{
            print("\(bmiValue)")
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
        }
        
        
        
        return
    }
    
    mutating func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    mutating func getAdvice() -> String {
        
        return bmi?.advice ?? "No Advice"

    }
    
    mutating func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
    
}
