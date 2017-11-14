//
//  ViewController.swift
//  One
//
//  Created by Jonathan Daniel on 11/6/17.
//  Copyright © 2017 Jonathan Herrejón. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   
    //MARK: Properties
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }//end dismissKeyboard
    
    override func viewDidLoad() {
        var tapGestureRecognizer : UITapGestureRecognizer
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        answerLabel.text=""
        questionTextField.text=""
        self.questionTextField.delegate = self;
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
    }//end viewDidLoad
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }//end textFieldShouldReturn
    
    //MARK: Actions
    @IBAction func askButton(_ sender: UIButton) {
        let answerNo = Int(arc4random_uniform(19))
        answerLabel.text=Model.answers[answerNo]
        questionTextField.text="";
        view.endEditing(true)
    }//end askButton
    
}//end ViewController

