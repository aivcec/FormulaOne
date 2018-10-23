//
//  LoginPresenter.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

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
        interactor.performLogin {
            self.wireframe.navigateToDrivers()
        }
    }
}
