//
//  ProfileInterface.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import Alamofire
import FBSDKLoginKit

class ProfileInteractor {
    
}

extension ProfileInteractor: ProfileInteractorInterface {
    
    func fetchProfileImage(imagePath: String, completion: @escaping ((UIImage) -> ())) {
        Alamofire.request(imagePath).response { response in
            if let data = response.data,
                let image = UIImage(data: data, scale:1) {
                completion(image)
            }
        }
    }
    
    func performLogout() {
        FBSDKLoginManager().logOut()
    }
}
