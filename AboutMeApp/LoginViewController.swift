//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Роман on 10.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var userNameTF: UITextField!
    
    let curName = "user"
    let curPassword = "password"
    var open = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if open {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = "Welcom, \(userNameTF.text ?? "")"
        } else { return }
    }
    
    @IBAction func loginButton() {
        if userNameTF.text == curName && passwordTF.text == curPassword {
            open = true
        } else {
            open = false
            showAlert(withTitel: "ERROR", andShowMessage: "Enter the correct username and password")
        }
    }
    
    @IBAction func fogotNameButton() {
        showAlert(withTitel: "Ooops", andShowMessage: "Your name is \(curName)")
    }
    @IBAction func fogotPassowrdButton() {
        showAlert(withTitel: "Ooops", andShowMessage: "Your passwrod is \(curPassword)")
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        guard let welcomVC = seque.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }

}

extension LoginViewController {
    private func showAlert(withTitel title: String, andShowMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

