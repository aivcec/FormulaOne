//
//  ProfileInterfaces.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit
import Alamofire

typealias ImageCompletionBlock = (UIImage) -> ()

protocol ProfileWireframeInterface: WireframeInterface {
    func navigateToLogin()
}

protocol ProfileViewInterface: ViewInterface {
}

protocol ProfilePresenterInterface: PresenterInterface {
    func fetchProfileImage(completion: @escaping ImageCompletionBlock)

    var name: String { get }
    
    func didTapLogout()
}

protocol ProfileInteractorInterface: InteractorInterface {
    func fetchProfileImage(imagePath: String, completion: @escaping ImageCompletionBlock)
    func performLogout()
}
