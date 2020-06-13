//
//  WelcomeViewController.swift
//  testfirebase
//
//  Created by Apple on 6/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: IBAction
    @IBAction func btnLogin(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: SBIdentifier.LoginVC.rawValue) as? LoginViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func btnSignUp(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: SBIdentifier.RegisterVC.rawValue) as? RegisterViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    //MARK: Function
    func configure() {
        self.lbl.text = "Start your IOS app with this\nFirebase Swift Starter Kit"
        // Button Login
        btnLogin.contentEdgeInsets = UIEdgeInsets(top: 10, left: 120, bottom: 10, right: 120)
        btnLogin.backgroundColor = UIColor.red
        btnLogin.layer.cornerRadius = 25
        // Button Sign Up
        btnSignUp.backgroundColor = UIColor.white
        btnSignUp.layer.cornerRadius = 25
        btnSignUp.layer.borderWidth = 1
        btnSignUp.layer.borderColor = UIColor.gray.cgColor
    }

}
