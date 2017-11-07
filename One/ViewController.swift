//
//  ViewController.swift
//  One
//
//  Created by Jonathan Daniel on 11/6/17.
//  Copyright © 2017 Jonathan Herrejón. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //MARK: Values
    let answers : [String] =
        ["It is certain",
         "It is decidedly so",
         "Without a doubt",
         "Yes definitely",
         "You may rely on it",
         "As I see it, yes",
         "Most likely",
         "Outlook good",
         "Yes",
         "Signs point to yes",
         "Reply hazy try again",
         "Ask again later",
         "Better not tell you now",
         "Cannot predict now",
         "Concentrate and ask again",
         "Don't count on it",
         "My reply is no",
         "My sources say no",
         "Outlook not so good",
         "Very doubtful"]
    
    //MARK: Properties
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }//end dismissKeyboard
    
    override func viewDidLoad() {
        var tapGestureRecognizer : UITapGestureRecognizer
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
    }//end viewDidLoad

    //MARK: Actions
    @IBAction func askButton(_ sender: UIButton) {
        let answerNo = Int(arc4random_uniform(19))
        mainLabel.text=answers[answerNo]
        questionTextField.text="";
    }//end askButton
    
}   //end ViewController

