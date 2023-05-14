//
//  MoreInfoViewController.swift
//  AboutMeApp
//
//  Created by Роман on 13.05.2023.
//

import UIKit
 
final class MoreInfoViewController: UIViewController {

    let user = User.getUser()
    
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Gradient()
        infoLabel.text = user.userInfo[0].biography
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
    

}
