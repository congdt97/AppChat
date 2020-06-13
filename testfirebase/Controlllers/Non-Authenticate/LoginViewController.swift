//
//  LoginViewController.swift
//  testfirebase
//
//  Created by Apple on 6/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: IBOutlet
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnFBLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    //MARK: Function
    func configure() {
        // Textfield Email
        tfEmail.addPadding(.left(15))
        tfEmail.addPadding(.right(15))
        tfEmail.layer.borderWidth = 1
        tfEmail.layer.cornerRadius = 25
        tfEmail.layer.borderColor = UIColor.black.cgColor
        // Textfield Password
        tfPassword.addPadding(.left(15))
        tfPassword.addPadding(.right(15))
        tfPassword.layer.borderWidth = 1
        tfPassword.layer.cornerRadius = 25
        tfPassword.layer.borderColor = UIColor.black.cgColor
        // Button Login
        btnLogin.contentEdgeInsets = UIEdgeInsets(top: 10, left: 120, bottom: 10, right: 120)
        btnLogin.layer.cornerRadius = 25
        btnLogin.layer.borderWidth = 1
        // Button Facebook Login
        btnFBLogin.layer.cornerRadius = 25
        btnFBLogin.layer.borderWidth = 1
    }
    
    //MARK: IBAction
    @IBAction func btnLogin(_ sender: Any) {
    }
    @IBAction func btnFBLogin(_ sender: Any) {
    }
    @IBAction func btnRegister(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: SBIdentifier.RegisterVC.rawValue) as? RegisterViewController
        if ((self.navigationController?.viewControllers.count ?? 0) - 1 > 0) {
            self.navigationController?.viewControllers = (self.navigationController?.viewControllers.suffix(1))!
        }
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
