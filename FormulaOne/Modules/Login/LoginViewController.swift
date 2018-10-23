//
//  LoginViewController.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var presenter: LoginPresenterInterface!
    
    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginTapped(_ sender: UIButton) {
        presenter.didTapLogin()
    }
}

extension LoginViewController: LoginViewInterface {
    
}
