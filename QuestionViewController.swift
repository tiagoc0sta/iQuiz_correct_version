//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Tiago de Freitas Costa on 2024-05-25.
//

import UIKit

class QuestionViewController: UIViewController {

    var score = 0
    var questionNumber = 0
    
    
    @IBOutlet weak var titleQuestionLabel: UILabel!
    @IBOutlet var buttonsAnswers: [UIButton]!
    
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        let userGotTheRightAnswer = questions[questionNumber].correctResponse == sender.tag
        
        if userGotTheRightAnswer {
            score += 1
            print("User got it right!")
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
        
    }
    
    func navigateToPerformanceScreen() {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureLayout()
        configureQuestion()
    }
    
    //config button layout
    func configureLayout() {
        navigationItem.hidesBackButton = true
        titleQuestionLabel.numberOfLines = 0 // number of lines automatic
        titleQuestionLabel.textAlignment = .center
        for button in buttonsAnswers {
            button.layer.cornerRadius = 12.0
        }
    }
    
    
    // show possible answers on buttons
    @objc func configureQuestion() {
        titleQuestionLabel.text = questions[questionNumber].title // Set the text of the label to the question title
        for button in buttonsAnswers {
            let buttonTitle = questions[questionNumber].responses[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
            
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
