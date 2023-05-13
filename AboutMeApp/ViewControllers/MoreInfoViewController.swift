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
        
        let moreInfo = user.userInfo
        for info in moreInfo{
            infoLabel.text = info.biography
        }

       
    }

}
