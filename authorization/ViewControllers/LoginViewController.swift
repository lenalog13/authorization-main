//
//  ViewController.swift
//  authorization
//
//  Created by Елена Логинова on 18.12.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let user = User.getUser()

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard
            let welcomeVS = navigationVC.topViewController as? WelcomeViewController else {
            return
        }
        
        welcomeVS.person = user.person
    }
    
    
    @IBAction func pressedForgotUserNameButton() {
        showAlert(with: "Oops!",
                  and: "Your name is \(user.login)🤫",
                  handler: nil)
    }
    
    @IBAction func pressedForgotPasswordButton() {
        showAlert(with: "Oops!",
                  and: "Your password is \(user.password)🤫",
                  handler: nil)
    }
    
    @IBAction func pressedLogInButton() {
        if loginTextField.text == user.login &&
            passwordTextField.text == user.password {
            performSegue(withIdentifier: "LogIn", sender: nil)
        } else {
            showAlert(with: "Invalid login or password",
                      and: "Please, enter correct login and password")
            { _ in
                self.passwordTextField.text = ""
            }
        }
    }

    @IBAction func unwindSegue (_ segue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(with title: String,
                           and message: String,
                           handler: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: handler)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}



