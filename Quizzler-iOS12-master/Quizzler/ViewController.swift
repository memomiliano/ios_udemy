//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question = allQuestion.list[questionNumber]
        questionLabel.text = question.questionText
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/\(allQuestion.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        
        questionNumber += 1
        
        
        if questionNumber < allQuestion.list.count {
            
            updateUI()
            let question = allQuestion.list[questionNumber]
            questionLabel.text = question.questionText
            
        } else {
            
            let alert = UIAlertController(title: "The game is over", message: "Restart?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
                self.startOver()
            }))
            //alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action in
                //self.gameOver()
            //}))
            
            self.present(alert, animated: true)
            
        }
        

    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if pickedAnswer == correctAnswer {
            ProgressHUD.showSuccess("Correct!")
            score += 100
        }else{
            ProgressHUD.showError("Wrong!")
        }
        
        updateUI()
        
    }
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        viewDidLoad()
   
    }
    
    func gameOver(){
        
        questionLabel.text = "Game Over \n You're score is \(score)"
        trueButton.isHidden = true
        falseButton.isHidden = true
        scoreLabel.isHidden = true
        progressBar.isHidden = true
        progressLabel.isHidden = true
        
    }
    

    
}
