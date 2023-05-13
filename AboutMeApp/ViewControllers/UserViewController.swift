//
//  UserViewController.swift
//  AboutMeApp
//
//  Created by Роман on 13.05.2023.
//

import UIKit

final class UserViewController: UIViewController {
    
    private let user = User.getUser()
    
    @IBOutlet var startNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surNameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var postCompanyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Gradient()
        LoudInfoToLabel()
    }
    

    private func Gradient(){
        let color1 = UIColor(red: 153 / 255, green: 26 / 255, blue: 61 / 255, alpha: 1).cgColor
        let color2 = UIColor(red: 243 / 255, green: 155 / 255 , blue: 51 / 255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    private func LoudInfoToLabel(){
        let userInformations = user.userInfo
        
        for information in userInformations {
            nameLabel.text = information.name
            surNameLabel.text = information.surname
            companyLabel.text = information.company
            postCompanyLabel.text = information.post
            startNameLabel.text = "\(information.name), \(information.surname)"
        }
    }
}
