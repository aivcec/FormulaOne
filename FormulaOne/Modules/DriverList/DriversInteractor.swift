//
//  DriversInteractor.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import FormulaAPI
import Alamofire

class DriversInteractor {
    var isFetchingDrivers: Bool = false
    
}

extension DriversInteractor: DriversInteractorInterface {
    
    func fetchDrivers(offset: Int, completion: @escaping DriversCompletionBlock) {
        isFetchingDrivers = true
        FormulaAPI.fetchDrivers(type: .f1, year: 2017, offset: offset) { response in
            completion(response)
            self.isFetchingDrivers = false
        }
    }
}
