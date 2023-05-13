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
    
    private let user = User.getUser()
    private var curName = ""
    private var curPassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GetUser()
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.userName = curName
            print("передача \(curName)")
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginButton() {
        guard userNameTF.text == curName && passwordTF.text == curPassword else {
            showAlert(
                withTitel: "Invalid login or password",
                andShowMessage: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
        
        
    }
    
    @IBAction func FogotButton(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitel: "Oops!", andShowMessage: "Your name is \(curName) 😉")
        : showAlert(withTitel: "Oops!", andShowMessage: "Your password is \(curPassword) 😉")
    }
    
    @IBAction func unwind(for seque: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    private func GetUser(){
        curName = String(user.userName)
        curPassword = String(user.userPassword)
        
    }

}


extension LoginViewController {
    private func showAlert(withTitel title: String, andShowMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

