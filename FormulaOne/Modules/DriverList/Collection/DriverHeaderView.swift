//
//  DriverHeaderView.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class DriverHeaderView: UICollectionReusableView {

    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureWith(image: UIImage) {
        imageView.image = image.withGrayscale
    }
    
}
