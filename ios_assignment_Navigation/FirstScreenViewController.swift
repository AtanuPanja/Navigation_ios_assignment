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

    // viewWillAppear method runs before every render of the FirstScreenViewController
    // so, the defined logic makes sure that the text fields are empty everytime the screen appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        firstNumberTextField.text = ""
        secondNumberTextField.text = ""
    }
    

    // defining a method continueWasTapped, which runs when the button continue is pressed
    // If the textfield inputs are strings, or are empty, then the next screen shows Result: 0
    // Else if the textfield has numbers (integer or decimal), the multiplication result is shown in the next screen
    // the secondScreenViewController has a variable result, which is assigned here with the product of the two numbers
    @IBAction func continueWasTapped(_ sender: Any) {

        // instantiating the secondScreenViewController, to perform the navigation
        let secondScreenViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondScreenViewController") as! SecondScreenViewController

        // using if let syntax to unwrap the optional values of the textfields
        // then, again if possible the String value is converted to Double
        // if the values couldn't be unwrapped, then the result is not set with any value
        if let number1AsString = firstNumberTextField.text,
           let number2AsString = secondNumberTextField.text,
           let numberOne = Double(number1AsString),
           let numberTwo = Double(number2AsString) {
            let result = numberOne * numberTwo
            
            secondScreenViewController.result = result
        }
        self.navigationController?.pushViewController(secondScreenViewController, animated: true)
    }
}

