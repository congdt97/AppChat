//
//  RegisterViewController.swift
//  testfirebase
//
//  Created by Apple on 6/12/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit
import AlamofireImage

class RegisterViewController: UIViewController {
    //MARK: IBOulet
    @IBOutlet weak var imgFacebook: UIImageView!
    @IBOutlet weak var tfDPName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfRetypePassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    //MARK: Function
    func configure() {
        // Image Icon Facebook
        imgFacebook.image = UIImage(named: "facebook")!.withColor(.blue)
        // Textfield Display Name
        tfDPName.addPadding(.left(15))
        tfDPName.addPadding(.right(15))
        tfDPName.layer.borderWidth = 1
        tfDPName.layer.cornerRadius = 25
        tfDPName.layer.borderColor = UIColor.black.cgColor
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
        // Textfield Retype Password
        tfRetypePassword.addPadding(.left(15))
        tfRetypePassword.addPadding(.right(15))
        tfRetypePassword.layer.borderWidth = 1
        tfRetypePassword.layer.cornerRadius = 25
        tfRetypePassword.layer.borderColor = UIColor.black.cgColor
    }
    
    //MARK: IBAction
    @IBAction func btnRegisterFB(_ sender: Any) {
    }
    @IBAction func btnLogin(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: SBIdentifier.LoginVC.rawValue) as? LoginViewController
        if ((self.navigationController?.viewControllers.count ?? 0) - 1 > 0) {
            self.navigationController?.viewControllers = (self.navigationController?.viewControllers.suffix(1))!
        }
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
