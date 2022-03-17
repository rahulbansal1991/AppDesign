//
//  SignupViewController.swift
//  AppDesign
//
//  Created by Rahul Bansal on 15/03/22.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var btnContinue: UIButton!
    @IBOutlet weak var btnDriverLicence: UIButton!
    @IBOutlet weak var btnStateID: UIButton!
    @IBOutlet weak var btnPassportPage: UIButton!
    @IBOutlet weak var imgvPlusFrontPage: UIImageView!
    @IBOutlet weak var imgvPlusBackPage: UIImageView!
    @IBOutlet weak var viewFrontPage: UIView!
    @IBOutlet weak var viewBackPage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarColor(color: UIColor.gray)
        
        btnContinue.roundCorners()
        viewFrontPage.roundCorners()
        viewBackPage.roundCorners()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        imgvPlusFrontPage.layer.cornerRadius = imgvPlusBackPage.frame.size.height / 2
        imgvPlusBackPage.layer.cornerRadius = imgvPlusBackPage.frame.size.height / 2
    }
    
    @IBAction func didTapOnRadioButton(_ sender: UIButton) {
        
        // Unselect all the buttons
        unselectRadioButton(button: btnDriverLicence)
        unselectRadioButton(button: btnStateID)
        unselectRadioButton(button: btnPassportPage)
        
        selectRadioButton(button: sender)
    }
    
    func selectRadioButton(button : UIButton) {
        button.setImage(UIImage(named: "radio_selected"), for: .normal)
    }
    
    func unselectRadioButton(button : UIButton) {
        button.setImage(UIImage(named: "radio_unselected"), for: .normal)
    }
}
