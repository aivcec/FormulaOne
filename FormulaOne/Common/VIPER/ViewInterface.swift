//
//  ViewInterface.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import SVProgressHUD

protocol ViewInterface: class {
    func showProgressHUD()
    func hideProgressHUD()
}

extension ViewInterface {
    
    func showProgressHUD() {
        SVProgressHUD.show()
    }
    
    func hideProgressHUD() {
        SVProgressHUD.dismiss()
    }
}
