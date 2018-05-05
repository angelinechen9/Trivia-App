//
//  ViewController2.swift
//  TriviaApp
//
//  Created by Student on 7/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var questions: [Question] = []
    var index = 0
    var count = 0
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBAction func checkanswer(sender: UIButton) {
        let input = sender.titleLabel!.text
        if (questions[index].iscorrect(input!) == true) {
            count = count + 1
        }
        if (index < questions.count - 1) {
            index = index + 1
        }
        else if (index >= questions.count - 1) {
            let view4 = self.storyboard?.instantiateViewControllerWithIdentifier("View4") as! ViewController4
            self.presentViewController(view4, animated: true, completion: nil)
        }
        label1.text = questions[index].question
        label2.text = "SCORE: \(count) / \(questions.count)"
        button1.setTitle(questions[index].choice1, forState: UIControlState.Normal)
        button2.setTitle(questions[index].choice2, forState: UIControlState.Normal)
        button3.setTitle(questions[index].choice3, forState: UIControlState.Normal)
        button4.setTitle(questions[index].choice4, forState: UIControlState.Normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var question1: Question = Question()
        question1.question = "WHO IS THE CAPTAIN OF THE ENTERPRISE?"
        question1.choice1 = "JAMES T. KIRK"
        question1.choice2 = "SPOCK"
        question1.choice3 = "JEAN-LUC PICARD"
        question1.choice4 = "WILLIAM RIKER"
        question1.answer = question1.choice1
        questions.append(question1)
        var question2: Question = Question()
        question2.question = "WHO IS THE FIRST OFFICER OF THE ENTERPRISE?"
        question2.choice1 = "JAMES T. KIRK"
        question2.choice2 = "SPOCK"
        question2.choice3 = "JEAN-LUC PICARD"
        question2.choice4 = "WILLIAM RIKER"
        question2.answer = question2.choice2
        questions.append(question2)
        var question3: Question = Question()
        question3.question = "WHO IS THE CHIEF MEDICAL OFFICER OF THE ENTERPRISE?"
        question3.choice1 = "SPOCK"
        question3.choice2 = "LEONARD MCCOY"
        question3.choice3 = "BEVERLY CRUSHER"
        question3.choice4 = "DEANNA TROI"
        question3.answer = question3.choice2
        questions.append(question3)
        var question4: Question = Question()
        question4.question = "WHO IS THE CHIEF ENGINEER OF THE ENTERPRISE?"
        question4.choice1 = "MONTGOMERY SCOTT"
        question4.choice2 = "NYOTA UHURA"
        question4.choice3 = "DATA"
        question4.choice4 = "GEORDI LAFORGE"
        question4.answer = question4.choice1
        questions.append(question4)
        var question5: Question = Question()
        question5.question = "WHO IS THE HELMSMAN OF THE ENTERPRISE?"
        question5.choice1 = "HIKARU SULU"
        question5.choice2 = "PAVEL CHEKOV"
        question5.choice3 = "DATA"
        question5.choice4 = "GEORDI LAFORGE"
        question5.answer = question5.choice1
        questions.append(question5)
        var question6: Question = Question()
        question6.question = "WHO IS THE NAVIGATOR OF THE ENTERPRISE?"
        question6.choice1 = "HIKARU SULU"
        question6.choice2 = "PAVEL CHEKOV"
        question6.choice3 = "DATA"
        question6.choice4 = "GEORDI LAFORGE"
        question6.answer = question6.choice2
        questions.append(question6)
        var question7: Question = Question()
        question7.question = "WHO IS THE COMMUNICATIONS OFFICER OF THE ENTERPRISE?"
        question7.choice1 = "MONTGOMERY SCOTT"
        question7.choice2 = "NYOTA UHURA"
        question7.choice3 = "DATA"
        question7.choice4 = "GEORDI LAFORGE"
        question7.answer = question7.choice2
        questions.append(question7)
        var question8: Question = Question()
        question8.question = "WHO IS THE CAPTAIN OF THE ENTERPRISE D?"
        question8.choice1 = "JAMES T. KIRK"
        question8.choice2 = "SPOCK"
        question8.choice3 = "JEAN-LUC PICARD"
        question8.choice4 = "WILLIAM RIKER"
        question8.answer = question8.choice3
        questions.append(question8)
        var question9: Question = Question()
        question9.question = "WHO IS THE FIRST OFFICER OF THE ENTERPRISE D?"
        question9.choice1 = "JAMES T. KIRK"
        question9.choice2 = "SPOCK"
        question9.choice3 = "JEAN-LUC PICARD"
        question9.choice4 = "WILLIAM RIKER"
        question9.answer = question9.choice4
        questions.append(question9)
        var question10: Question = Question()
        question10.question = "WHO IS THE SECOND OFFICER OF THE ENTERPRISE D?"
        question10.choice1 = "SPOCK"
        question10.choice2 = "MONTGOMERY SCOTT"
        question10.choice3 = "WILLIAM RIKER"
        question10.choice4 = "DATA"
        question10.answer = question10.choice4
        questions.append(question10)
        var question11: Question = Question()
        question11.question = "WHO IS THE CHIEF ENGINEER OF THE ENTERPRISE D?"
        question11.choice1 = "MONTGOMERY SCOTT"
        question11.choice2 = "NYOTA UHURA"
        question11.choice3 = "DATA"
        question11.choice4 = "GEORDI LAFORGE"
        question11.answer = question11.choice4
        questions.append(question11)
        var question12: Question = Question()
        question12.question = "WHO IS THE CHIEF SECURITY OFFICER OF THE ENTERPRISE D?"
        question12.choice1 = "MONTGOMERY SCOTT"
        question12.choice2 = "NYOTA UHURA"
        question12.choice3 = "DATA"
        question12.choice4 = "WORF"
        question12.answer = question12.choice4
        questions.append(question12)
        var question13: Question = Question()
        question13.question = "WHO IS THE CHIEF MEDICAL OFFICER OF THE ENTERPRISE D?"
        question13.choice1 = "SPOCK"
        question13.choice2 = "LEONARD MCCOY"
        question13.choice3 = "BEVERLY CRUSHER"
        question13.choice4 = "DEANNA TROI"
        question13.answer = question13.choice3
        questions.append(question13)
        var question14: Question = Question()
        question14.question = "WHO IS THE COUNSELOR OF THE ENTERPRISE D?"
        question14.choice1 = "SPOCK"
        question14.choice2 = "LEONARD MCCOY"
        question14.choice3 = "BEVERLY CRUSHER"
        question14.choice4 = "DEANNA TROI"
        question14.answer = question14.choice4
        questions.append(question14)
        var question15: Question = Question()
        question15.question = "BEAM ME UP, SCOTTY."
        question15.choice1 = "JAMES T. KIRK"
        question15.choice2 = "SPOCK"
        question15.choice3 = "JEAN-LUC PICARD"
        question15.choice4 = "WILLIAM RIKER"
        question15.answer = question15.choice1
        questions.append(question15)
        var question16: Question = Question()
        question16.question = "LIVE LONG AND PROSPER."
        question16.choice1 = "JAMES T. KIRK"
        question16.choice2 = "SPOCK"
        question16.choice3 = "JEAN-LUC PICARD"
        question16.choice4 = "WILLIAM RIKER"
        question16.answer = question16.choice2
        questions.append(question16)
        var question17: Question = Question()
        question17.question = "I'M A DOCTOR, NOT A ... ."
        question17.choice1 = "SPOCK"
        question17.choice2 = "LEONARD MCCOY"
        question17.choice3 = "BEVERLY CRUSHER"
        question17.choice4 = "DEANNA TROI"
        question17.answer = question17.choice2
        questions.append(question17)
        var question18: Question = Question()
        question18.question = "I'M GIVIN' HER ALL SHE'S GOT, CAPTAIN."
        question18.choice1 = "MONTGOMERY SCOTT"
        question18.choice2 = "NYOTA UHURA"
        question18.choice3 = "DATA"
        question18.choice4 = "GEORDI LAFORGE"
        question18.answer = question18.choice1
        questions.append(question18)
        var question19: Question = Question()
        question19.question = "WARP SPEED."
        question19.choice1 = "HIKARU SULU"
        question19.choice2 = "PAVEL CHEKOV"
        question19.choice3 = "DATA"
        question19.choice4 = "GEORDI LAFORGE"
        question19.answer = question19.choice1
        questions.append(question19)
        var question20: Question = Question()
        question20.question = "NUCLEAR WESSELS."
        question20.choice1 = "HIKARU SULU"
        question20.choice2 = "PAVEL CHEKOV"
        question20.choice3 = "DATA"
        question20.choice4 = "GEORDI LAFORGE"
        question20.answer = question20.choice2
        questions.append(question20)
        var question21: Question = Question()
        question21.question = "HAILING ON ALL FREQUENCIES."
        question21.choice1 = "MONTGOMERY SCOTT"
        question21.choice2 = "NYOTA UHURA"
        question21.choice3 = "DATA"
        question21.choice4 = "GEORDI LAFORGE"
        question21.answer = question21.choice2
        questions.append(question21)
        var question22: Question = Question()
        question22.question = "📖"
        question22.choice1 = "JAMES T. KIRK"
        question22.choice2 = "SPOCK"
        question22.choice3 = "JEAN-LUC PICARD"
        question22.choice4 = "WILLIAM RIKER"
        question22.answer = question22.choice3
        questions.append(question22)
        var question23: Question = Question()
        question23.question = "♠️"
        question23.choice1 = "JAMES T. KIRK"
        question23.choice2 = "SPOCK"
        question23.choice3 = "JEAN-LUC PICARD"
        question23.choice4 = "WILLIAM RIKER"
        question23.answer = question23.choice4
        questions.append(question23)
        var question24: Question = Question()
        question24.question = "🎨"
        question24.choice1 = "SPOCK"
        question24.choice2 = "MONTGOMERY SCOTT"
        question24.choice3 = "WILLIAM RIKER"
        question24.choice4 = "DATA"
        question24.answer = question24.choice4
        questions.append(question24)
        var question25: Question = Question()
        question25.question = "👓"
        question25.choice1 = "MONTGOMERY SCOTT"
        question25.choice2 = "NYOTA UHURA"
        question25.choice3 = "DATA"
        question25.choice4 = "GEORDI LAFORGE"
        question25.answer = question25.choice4
        questions.append(question25)
        var question26: Question = Question()
        question26.question = "🗡"
        question26.choice1 = "MONTGOMERY SCOTT"
        question26.choice2 = "NYOTA UHURA"
        question26.choice3 = "DATA"
        question26.choice4 = "WORF"
        question26.answer = question26.choice4
        questions.append(question26)
        var question27: Question = Question()
        question27.question = "🎭"
        question27.choice1 = "SPOCK"
        question27.choice2 = "LEONARD MCCOY"
        question27.choice3 = "BEVERLY CRUSHER"
        question27.choice4 = "DEANNA TROI"
        question27.answer = question27.choice3
        questions.append(question27)
        var question28: Question = Question()
        question28.question = "🍫"
        question28.choice1 = "SPOCK"
        question28.choice2 = "LEONARD MCCOY"
        question28.choice3 = "BEVERLY CRUSHER"
        question28.choice4 = "DEANNA TROI"
        question28.answer = question28.choice4
        questions.append(question28)
        label1.text = questions[index].question
        label2.text = "SCORE: \(count) / \(questions.count)"
        button1.setTitle(questions[index].choice1, forState: UIControlState.Normal)
        button2.setTitle(questions[index].choice2, forState: UIControlState.Normal)
        button3.setTitle(questions[index].choice3, forState: UIControlState.Normal)
        button4.setTitle(questions[index].choice4, forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

