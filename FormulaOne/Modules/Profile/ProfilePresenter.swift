//
//  ProfilePresenter.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class ProfilePresenter {
    
    private unowned var view: ProfileViewInterface
    private var interactor: ProfileInteractorInterface
    private var wireframe: ProfileWireframeInterface
    
    init(wireframe: ProfileWireframeInterface, view: ProfileViewInterface, interactor: ProfileInteractorInterface) {
        self.wireframe = wireframe
        self.view = view
        self.interactor = interactor
    }
}

extension ProfilePresenter: ProfilePresenterInterface {
    func didTapLogout() {
        interactor.performLogout {
            self.wireframe.navigateToLogin()
        }
    }
}
