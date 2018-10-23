//
//  ProfileInterfaces.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit
import Alamofire

protocol ProfileWireframeInterface: WireframeInterface {
    func navigateToLogin()
}

protocol ProfileViewInterface: ViewInterface {
}

protocol ProfilePresenterInterface: PresenterInterface {
    func didTapLogout()
}

protocol ProfileInteractorInterface: InteractorInterface {
    func performLogout(completion: @escaping (() -> ()))
}
