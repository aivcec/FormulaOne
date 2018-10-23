//
//  ProfileInterface.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class ProfileInteractor {
    
}

extension ProfileInteractor: ProfileInteractorInterface {
    
    func performLogout(completion: @escaping (() -> ())) {
        completion()
    }
}
