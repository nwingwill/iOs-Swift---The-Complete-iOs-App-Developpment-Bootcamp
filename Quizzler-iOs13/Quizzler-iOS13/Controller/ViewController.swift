//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    //Timer Control
    var totalTime  = 0
    var timer = Timer()
    var secondPast = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLablel: UILabel!
    var quizBrain = QuizBrain()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        progressBar.progress = 0.0
        progressBar.isHidden = false
        updateUI()
        
        
    }
    
    @IBAction func actionButtonPress(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle //True, False
//        let userAswer = quiz[questionNumber]
//        let actualAswer = actualQuestion.answer
        
        let userGotItRigth = quizBrain.checkAswer(userAnswer!)
        
        progressBar.progress = 0.0
        secondPast = 0
        
        if userGotItRigth {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }

        quizBrain.nextQuestion()

        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        totalTime = 2
        
    }
    
    @objc func updateUI() {
        
        if secondPast < totalTime {
            
            secondPast += 1
            
        } else {
            
            secondPast = 0
            totalTime = 0
//            questionLabel.text = quiz[questionNumber].text
            scoreLablel.text = "Score: \(quizBrain.getScore())"
            questionLabel.text = quizBrain.getQuestionText()
            trueButton.backgroundColor = UIColor.clear
            falseButton.backgroundColor = UIColor.clear
        }
        //progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        progressBar.progress = quizBrain.getProgress()

    }
}

