//
//  ProfilePresenter.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class ProfilePresenter {
    
    private unowned var view: ProfileViewInterface
    private var interactor: ProfileInteractorInterface
    private var wireframe: ProfileWireframeInterface
    private let sessionInfo: SessionInfo
    
    init(sessionInfo: SessionInfo, wireframe: ProfileWireframeInterface, view: ProfileViewInterface, interactor: ProfileInteractorInterface) {
        self.sessionInfo = sessionInfo
        self.wireframe = wireframe
        self.view = view
        self.interactor = interactor
    }
}

extension ProfilePresenter: ProfilePresenterInterface {

    func fetchProfileImage(completion: @escaping ImageCompletionBlock) {
        if let path = sessionInfo.profileImagePath {
            interactor.fetchProfileImage(imagePath: path, completion: completion)
        }
    }
    
    var name: String {
        return sessionInfo.name
    }
    
    func didTapLogout() {
        self.interactor.performLogout()
        self.wireframe.navigateToLogin()
    }
}
