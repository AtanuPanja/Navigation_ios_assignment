//
//  SecondScreenViewController.swift
//  ios_assignment_Navigation
//
//  Created by promact on 07/02/24.
//

import UIKit

class SecondScreenViewController: UIViewController {

    
    @IBOutlet weak var multiplyResultLabel: UILabel!
    
    var result: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let result = result {
            
            if "\(result)".hasSuffix(".0") {
                multiplyResultLabel.text = "\(Int(result))"
            }
            else {
                multiplyResultLabel.text = "\(result)"
            }
            
        }
    }
    
}
