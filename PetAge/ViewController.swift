//
//  ViewController.swift
//  PetAge
//
//  Created by Ana Lucia Fermino de O. Arine on 13/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!

    @IBOutlet weak var showText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTextField.delegate = self
        
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
       
        
        var humanAge: Int

        let intAge = Int(myTextField.text!)
     
        print(intAge!)
        
        switch (intAge!) {
        case 1 : humanAge = 15
        case 2 : humanAge = 24
        case 3 : humanAge = 28
        case 4 : humanAge = 32
        case 5 : humanAge = 36
        case 6 : humanAge = 40
        case 7 : humanAge = 44
        case 8 : humanAge = 48
        case 9 : humanAge = 52
        case 10 : humanAge = 56
        case 11 : humanAge = 60
        case 12 : humanAge = 64
        case 13 : humanAge = 68
        case 14 : humanAge = 72
        case 15 : humanAge = 76
        case 16 : humanAge = 80
        case 17 : humanAge = 84
        case 18 : humanAge = 88
        case 19 : humanAge = 89
        case 20 : humanAge = 93
        case 21 : humanAge = 96
        case 22 : humanAge = 99
        case 23 : humanAge = 103
        default:
            humanAge = 0
        }
        
        showText.text = "Your cat has \(humanAge) years in human age."
         }
    }

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
