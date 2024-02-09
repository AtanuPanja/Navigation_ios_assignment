//
//  SecondScreenViewController.swift
//  ios_assignment_Navigation
//
//  Created by promact on 07/02/24.
//

import UIKit

class SecondScreenViewController: UIViewController {

    // IBOutlet setup for the label on the result page
    @IBOutlet weak var multiplyResultLabel: UILabel!

    // variable used to receive the result data from the first view controller
    var result: Double?

    // defining functionality to appear on the screen, when the screen loads
    override func viewDidLoad() {
        super.viewDidLoad()

        // unwrapping the optional double value of the result
        // if in the values in the textfields, were nil, or strings(which are not numbers), then there would have been no unwrapping in that function
        // and, no value would have been assigned to the result variable. 
        // In such a case, result wouldn't be unwrapped, and the default result screen is shown (Result: 0)

        // Otherwise, if result was unwrapped, some number value is displayed, either integer or double
        if let result = result {

            // if the fractional part of the result = .0, remove it to show only the integer part
            // else show the fractional part as well
            if "\(result)".hasSuffix(".0") {
                multiplyResultLabel.text = "\(Int(result))"
            }
            else {
                multiplyResultLabel.text = "\(result)"
            }
            
        }
    }
    
}
