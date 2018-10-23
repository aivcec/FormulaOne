//
//  ProfileWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class ProfileWireframe: BaseWireframe {
    init() {
        let vc = ProfileVC()
        super.init(viewController: vc)
        
        let interactor = ProfileInteractor()
        let presenter = ProfilePresenter(wireframe: self, view: vc, interactor: interactor)
        vc.presenter = presenter
    }
}

extension ProfileWireframe: ProfileWireframeInterface {
    
    func navigateToLogin() {
        navigationController?.setRootWireframe(LoginWireframe())
    }
}
