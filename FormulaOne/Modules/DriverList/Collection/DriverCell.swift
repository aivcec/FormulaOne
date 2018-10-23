//
//  DriverCell.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class DriverCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureWith(driverData: DriverData) {
        nameLabel.text = driverData.name
        nationalityLabel.text = driverData.nationality
    }
}
