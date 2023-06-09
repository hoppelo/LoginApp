//
//  ViewController.swift
//  LoginApp
//
//  Created by Nadezhda Popova on 2023/04/01.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greetings = "Welcome, \(username.text ?? "")!"
    }
    
    
    @IBAction func loginButtonTapped() {
        guard let inputText = username.text, !inputText.isEmpty else {
            showAlert(
                withTitle: "Invalid login or password.",
                andMessage: "Please, enter correct login and password."
            )
            return
        }
        
        let usernamePattern = "name"
        let isUsernameValid = NSPredicate(format: "SELF MATCHES %@", usernamePattern)
            .evaluate(with: inputText)
        
        if !isUsernameValid {
            print(showAlert(withTitle: "Invalid login or password.", andMessage: "Please, enter correct login and password."))
            return
        }
        
        guard let inputPassword = password.text, !inputPassword.isEmpty else {
            showAlert(
                withTitle: "Invalid login or password.",
                andMessage: "Please, enter correct login and password."
            )
            return
        }
        
        let passwordPattern = "1111"
        let isPasswordValid = NSPredicate(format: "SELF MATCHES %@", passwordPattern)
            .evaluate(with: inputPassword)
        
        if !isPasswordValid {
            print(showAlert(withTitle: "Invalid login or password.", andMessage: "Please, enter correct login and password."))
            return
        }
    }
    
    @IBAction private func usernameHintTapped() {
        showAlert(withTitle: "Oops", andMessage: "Your Username is name 😉")
    }
    
    @IBAction private func passwordHintTapped(_ sender: Any) {
        showAlert(withTitle: "Oops", andMessage: "Your Password is 1111 😉")
    }
    
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.username.text = ""
            self.password.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    

    
    


}

