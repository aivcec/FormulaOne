//
//  TabBarWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class TabBarWireframe: BaseWireframe {
    
    init() {
        let vc = UITabBarController()
        vc.viewControllers = [
            DriversWireframe().viewController,
            ProfileWireframe().viewController
        ]
        vc.tabBar.tintColor = .black
        
        super.init(viewController: vc)
    }
}
