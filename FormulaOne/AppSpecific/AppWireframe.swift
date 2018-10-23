//
//  AppWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class AppWireframe: BaseWireframe {
    
    private let sessionInfo: SessionInfo
    
    init(sessionInfo: SessionInfo) {
        self.sessionInfo = sessionInfo
        
        let navController = UINavigationController()
        navController.navigationBar.isHidden = true
        super.init(viewController: navController)
        
        if sessionInfo.isActiveSession {
            setupDriversModule()
        } else {
            setupLoginModule()
        }
    }
    
    func setupLoginModule() {
        let loginWireframe = LoginWireframe(sessionInfo: sessionInfo)
        navigationController?.setRootWireframe(loginWireframe)
    }
    
    func setupDriversModule() {
        let tabBarWireframe = TabBarWireframe(sessionInfo: sessionInfo)
        navigationController?.setRootWireframe(tabBarWireframe)
    }
}
