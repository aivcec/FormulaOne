//
//  Device.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

struct Device {
    static var isSmallDevice: Bool = {
        let bounds = UIScreen.main.bounds
        let smallerDimension = bounds.width < bounds.height ? bounds.width : bounds.height
        return smallerDimension <= 320
    }()
}
