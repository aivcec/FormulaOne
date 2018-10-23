//
//  DriversPresenter.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import Alamofire
import FormulaAPI

class DriversPresenter {
    
    private unowned var view: DriversViewInterface
    private var interactor: DriversInteractorInterface
    private var wireframe: DriversWireframeInterface
    
    var driverData: [DriverData] = []
    
    init(wireframe: DriversWireframeInterface, view: DriversViewInterface, interactor: DriversInteractorInterface) {
        self.wireframe = wireframe
        self.view = view
        self.interactor = interactor
    }
}

extension DriversPresenter: DriversPresenterInterface {
    
    func viewDidLoad() {
        interactor.fetchDrivers(offset: 0) { response in
            self.handleDriversResult(response.result)
        }
    }
    
    func fetchNewPage() {
        if interactor.isFetchingDrivers || (driverData.count % 10 != 0) {
            return
        }
        
        interactor.fetchDrivers(offset: driverData.count) { response in
            self.handleDriversResult(response.result)
        }
    }
}

extension DriversPresenter {
    
    private func handleDriversResult(_ result: Result<[Driver]>) {
        switch result {
        case .success(let drivers):
            self.driverData.append(contentsOf: drivers.map { DriverData(name: $0.givenName, nationality: $0.nationality)})
            self.view.reloadData()
        case .failure(let error):
            self.wireframe.showErrorAlert(with: error.localizedDescription)
        }
    }
}
