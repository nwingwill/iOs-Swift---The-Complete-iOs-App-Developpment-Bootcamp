//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    let storyBrain = [
    
        Story(t: "You see fork in the road", ch1: "Take a left", ch2: "Take a right"),
        Story(t: "You see a tiger", ch1: "Shout for Help", ch2: "Play dead"),
        Story(t: "You find a treasure chest", ch1: "Openit", ch2: "Play dead")
    ]
    
    var brainControl : Int
    
    
    func loadBasicResult(brainControl : Int) -> String {
        return storyBrain[brainControl].title
    }
    
    func getResultText(ch : Int) -> String{
        
        var result : String = ""
        
        if ch == 1 {
           result =  storyBrain[brainControl].choice1
        } else {
            result =  storyBrain[brainControl].choice2
        }
        
        return result
        
    }
    
    mutating func loadBasicControl(ch : Int) -> String {
        
        var result : String
        print(ch)
        if ch == 1 {
            result = storyBrain[brainControl].choice1
            
//            brainControl += 1
            print("\(brainControl), \(storyBrain.count)")
        }else{
           
            result = storyBrain[brainControl].choice2


        }

        return result
    }
}

