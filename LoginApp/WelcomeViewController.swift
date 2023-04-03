//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Nadezhda Popova on 2023/04/01.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingsLabel: UILabel!
    
    var greetings: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingsLabel.text = greetings
    

    }
    

    
    @IBAction func logoutButtonTapped() {
        
    }
    
    
}
