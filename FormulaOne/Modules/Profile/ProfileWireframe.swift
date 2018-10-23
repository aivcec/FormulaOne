//
//  ProfileWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class ProfileWireframe: BaseWireframe {
    
    private let sessionInfo: SessionInfo
    
    init(sessionInfo: SessionInfo) {
        self.sessionInfo = sessionInfo
        let vc = ProfileViewController()
        super.init(viewController: vc)
        
        let interactor = ProfileInteractor()
        let presenter = ProfilePresenter(sessionInfo: sessionInfo, wireframe: self, view: vc, interactor: interactor)
        vc.presenter = presenter
    }
}

extension ProfileWireframe: ProfileWireframeInterface {
    
    func navigateToLogin() {
        let loginWireframe = LoginWireframe(sessionInfo: sessionInfo)
        navigationController?.setRootWireframe(loginWireframe)
    }
}
