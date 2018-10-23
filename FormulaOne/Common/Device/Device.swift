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
        return UIScreen.main.bounds.width <= 320
    }()
}
