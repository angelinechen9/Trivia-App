//
//  Question.swift
//  TriviaApp
//
//  Created by Student on 7/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class Question {
    var question: String
    var choice1: String
    var choice2: String
    var choice3: String
    var choice4: String
    var answer: String
    
    init() {
        question = ""
        choice1 = ""
        choice2 = ""
        choice3 = ""
        choice4 = ""
        answer = ""
    }
    
    func iscorrect(input: String) -> Bool {
        if (input == answer) {
            return true
        }
        else {
            return false
        }
    }
}
