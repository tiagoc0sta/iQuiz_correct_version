//
//  ViewController.swift
//  iQuiz
//
//  Created by Tiago de Freitas Costa on 2024-05-25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var buttonStartQuiz: UIButton!
    
    @IBAction func pressedButton(_ sender: Any) {
        print("button was pressed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout(){
        buttonStartQuiz.layer.cornerRadius = 12.0
    }


}


