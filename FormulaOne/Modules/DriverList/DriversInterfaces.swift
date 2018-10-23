//
//  DriversInterfaces.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import FormulaAPI

protocol DriversWireframeInterface: WireframeInterface {
}

protocol DriversViewInterface: ViewInterface {
    func reloadData()
}

protocol DriversPresenterInterface: PresenterInterface {
    var driverData: [DriverData] { get }
    
    func fetchNewPage()
}

protocol DriversInteractorInterface: InteractorInterface {
    var isFetchingDrivers: Bool { get }
    
    func fetchDrivers(offset: Int, completion: @escaping DriversCompletionBlock)
}
