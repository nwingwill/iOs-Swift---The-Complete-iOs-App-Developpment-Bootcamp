//
//  ViewController.swift
//  catch The Fox
//
//  Created by Nestor Blanco on 5/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    var innerArray = ["◻️", "◻️", "◻️", "◻️", "◻️", "◻️"]
    var outerArray = [[String]]()

    var outerIndex = 0
    var innerIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("============")
        start()
        print("============")
    }

    @IBAction func upButton(_ sender: UIButton) {
        up()
        print("============")
        visualise()
        print("============")
    }
    
    @IBAction func rightButton(_ sender: UIButton) {
        right()
        print("============")
        visualise()
        print("============")
    }
    
    @IBAction func downButton(_ sender: UIButton) {
        
        down()
        print("============")
        visualise()
        print("============")
        
    }
    
    @IBAction func leftButton(_ sender: UIButton) {
        left()
        print("============")
        visualise()
        print("============")
    }
    

    func createWorld() {
        
        for _ in 0 ... 6 {
            outerArray.append(([]))
        }
        
        for i in 0 ... 6 {
            outerArray[i] = innerArray
        }
        
    }

    func start() {
        
        createWorld()
        outerArray[0][0] = "🦊"
        outerArray[5][4] = "🌽"
        for i in 0 ... 6 {
            print(outerArray[i])
        }
        
    }

    func locateFox() {
        
        for i in 0..<outerArray.count - 1 {
            if let n1 = outerArray.firstIndex(where: {$0[i] == "🦊"}) {
                outerIndex = n1
            }
            
            if let n2 = outerArray.firstIndex(where: {$0[i] == "🦊"}) {
                outerIndex = n2
            }
        }
        
    }

    func left() {
        locateFox()
        if innerIndex > 0 {
            outerArray[outerIndex][innerIndex] = "◻️"
            outerArray[outerIndex][innerIndex - 1] = "🦊"
//            visualise()
        }else{
            print("Can't go furter left.")
        }
    }

    func right() {
        locateFox()
        if (innerIndex < innerArray.count){
            outerArray[outerIndex][innerIndex] = "◻️"
            outerArray[outerIndex][innerIndex + 1] = "🦊"
//            visualise()
        }else{
            print("Can't go to further right")
        }
    }

    func up() {
        
        locateFox()
        if outerIndex > 0 {
            outerArray[outerIndex][innerIndex] = "◻️"
            outerArray[outerIndex - 1][innerIndex] = "🦊"
//            visualise()
        }else{
            print("Can't go to further right")
        }
        
    }

    func down() {
        locateFox()
        if outerIndex < outerArray.count {
            outerArray[outerIndex][innerIndex] = "◻️"
            outerArray[outerIndex + 1][innerIndex] = "🦊"
//            visualise()
        }else{
            print("Can't go to further right")
        }
    }

    func visualise() {
        for i in 0 ... 6 {
            print(outerArray[i])
        }
    }

}

