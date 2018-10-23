//
//  LoginInterfaces.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit
import Alamofire

protocol LoginWireframeInterface: WireframeInterface {
    func navigateToDrivers()
}

protocol LoginViewInterface: ViewInterface {
}

protocol LoginPresenterInterface: PresenterInterface {
    func didTapLogin()
}

protocol LoginInteractorInterface: InteractorInterface {
    func performLogin(from viewController: UIViewController, onSuccess: @escaping (() -> ()), onError: @escaping ((String) -> ()))
}
