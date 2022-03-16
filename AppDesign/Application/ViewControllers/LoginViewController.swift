//
//  LoginViewController.swift
//  AppDesign
//
//  Created by Rahul Bansal on 15/03/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnCreateAccount: UIButton!
    @IBOutlet weak var btnShowPassword: UIButton!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnLogin.roundCorners()
        btnCreateAccount.roundCorners()
    }
    
    @IBAction func didTapOnShowPasswordButton(_ sender: UIButton) {
        if tfPassword.isSecureTextEntry {
            tfPassword.isSecureTextEntry = false
            btnShowPassword.setTitle("Hide", for: .normal)
        } else {
            tfPassword.isSecureTextEntry = true
            btnShowPassword.setTitle("Show", for: .normal)
        }
    }
    
    @IBAction func didTapOnCreateAccountButton(_ sender: UIButton) {
        
    }
}
