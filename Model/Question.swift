//
//  Question.swift
//  iQuiz
//
//  Created by Tiago de Freitas Costa on 2024-05-25.
//

import Foundation


struct Question {
    var title: String
    var responses: [String]
    var correctResponse: Int
}
//array
let questions: [Question] = [
    Question(title: "What spell to disarm your opponent in Harry Potter?", responses: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctResponse: 2),
    Question(title: "When was released Avatar: The Way of Water?", responses: ["2014", "2022", "2023"], correctResponse: 1),
    Question(title: "What was released Avengers: Endgame?", responses: ["2019", "2018", "2017"], correctResponse: 1),
]
