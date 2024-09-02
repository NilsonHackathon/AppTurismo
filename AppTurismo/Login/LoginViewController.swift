//
//  LoginViewController.swift
//  AppTurismo
//
//  Created by User-UAM on 8/31/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signIngButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signInButtonAction(_ sender: Any) {
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
        

    }
    

}
