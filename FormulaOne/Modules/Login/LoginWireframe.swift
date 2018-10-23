//
//  LoginWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class LoginWireframe: BaseWireframe {
    
    init() {
        let vc = LoginViewController()
        super.init(viewController: vc)
        
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(wireframe: self, view: vc, interactor: interactor)
        vc.presenter = presenter
    }
    
}

extension LoginWireframe: LoginWireframeInterface {
    
    func navigateToDrivers() {
        navigationController?.setRootWireframe(TabBarWireframe())
    }
}
