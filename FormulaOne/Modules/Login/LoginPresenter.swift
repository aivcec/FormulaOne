//
//  LoginPresenter.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class LoginPresenter {
    
    private unowned var view: LoginViewInterface
    private var interactor: LoginInteractorInterface
    private var wireframe: LoginWireframeInterface
    
    init(wireframe: LoginWireframeInterface, view: LoginViewInterface, interactor: LoginInteractorInterface) {
        self.wireframe = wireframe
        self.view = view
        self.interactor = interactor
    }
}

extension LoginPresenter: LoginPresenterInterface {
    func didTapLogin() {
        
        if let viewController = view as? UIViewController {
            interactor.performLogin(from: viewController, onSuccess: {
                self.wireframe.navigateToDrivers()
            }) { error in
                self.wireframe.showErrorAlert(with: error)
            }
        }
    }
}
