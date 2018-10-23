//
//  DriversWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

class DriversWireframe: BaseWireframe {
    
    init() {
        let vc = DriversViewController()
        super.init(viewController: vc)
        
        let interactor = DriversInteractor()
        let presenter = DriversPresenter(wireframe: self, view: vc, interactor: interactor)
        vc.presenter = presenter
    }
}

extension DriversWireframe: DriversWireframeInterface {
    
}
