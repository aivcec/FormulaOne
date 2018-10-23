//
//  SessionInfo.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import FBSDKCoreKit
import FBSDKLoginKit

struct SessionInfo {
    
    var isActiveSession: Bool {
        get {
            return FBSDKAccessToken.currentAccessTokenIsActive()
        }
    }
    
    var token: String? {
        get {
            return FBSDKAccessToken.current()?.tokenString
        }
    }
    
    var name: String {
        get {
            return FBSDKProfile.current()?.name ?? ""
        }
    }
    
    var profileImagePath: String? {
        get {
            return FBSDKProfile.current()?.imageURL(for: .square, size: CGSize(width: 200, height: 200))?.absoluteString
        }
    }
    
    func stopSession() {
        FBSDKLoginManager().logOut()
    }
}
