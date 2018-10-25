//
//  LoginInteractor.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginInteractor {
    
}

extension LoginInteractor: LoginInteractorInterface {
    
    func performLogin(from viewController: UIViewController, onSuccess: @escaping (() -> ()), onError: @escaping ((String) -> ())) {
        let manager = FBSDKLoginManager()
        manager.logIn(withReadPermissions: ["public_profile", "email"], from: viewController) { result, error in
            if let error = error {
                onError(error.localizedDescription)
            } else if let result = result, !result.isCancelled {
                FBSDKProfile.loadCurrentProfile(completion: { (profile, errors) in
                    if let error = error {
                        onError(error.localizedDescription)
                    }
                    onSuccess()
                })
            }
        }
    }
}
