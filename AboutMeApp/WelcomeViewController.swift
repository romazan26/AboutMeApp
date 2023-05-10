//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Роман on 10.05.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomLabel: UILabel!
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomLabel.text = userName

        
    }
    

   

}
