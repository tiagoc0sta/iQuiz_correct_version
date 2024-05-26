//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Tiago de Freitas Costa on 2024-05-26.
//

import UIKit

class PerformanceViewController: UIViewController {
    
    var score: Int? //optional

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    
    @IBOutlet weak var buttonRestartQuiz: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureLayout()
        configurePerformance()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        buttonRestartQuiz.layer.cornerRadius = 12.0
    }
    
    func configurePerformance(){
        guard let score = score else {return} // unpacking optional
        resultLabel.text = "You got \(score) out of \(questions.count) questions right"
        let percentage = (score*100) / questions.count
        percentageLabel.text = "Final percentage: \(percentage)%"
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
