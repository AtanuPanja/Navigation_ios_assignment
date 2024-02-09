//
//  ViewController.swift
//  ios_assignment_Navigation
//
//  Created by promact on 07/02/24.
//

import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet weak var firstNumberTextField: UITextField!
    
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstNumberTextField.text = ""
        secondNumberTextField.text = ""
    }
    
    
    @IBAction func continueWasTapped(_ sender: Any) {
        
        let secondScreenViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondScreenViewController") as! SecondScreenViewController
        
        if let number1AsString = firstNumberTextField.text,
           let number2AsString = secondNumberTextField.text,
           let numberOne = Double(number1AsString),
           let numberTwo = Double(number2AsString) {
            let result = numberOne * numberTwo
            
            secondScreenViewController.result = result
            
            // secondScreenViewController.modalTransitionStyle = .crossDissolve
        }
        self.navigationController?.pushViewController(secondScreenViewController, animated: true)
    }
    

}

