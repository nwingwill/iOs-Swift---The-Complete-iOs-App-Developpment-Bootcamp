//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Permite vincular y dar control a elementos en la vista
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

            
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        let diceArry = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]//Asignar valor de array a una variable
        
        //Permite crear un numero entero al asar Int.random(in: 0...5)
        //Permite seleccionar un elemento random al asar .randomElement()
        
        diceImageView1.image = diceArry.randomElement()
        diceImageView2.image = diceArry.randomElement()

    }
}

