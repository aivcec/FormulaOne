//
//  ProfileViewController.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var presenter: ProfilePresenterInterface!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var avatarWidthConstraint: NSLayoutConstraint!
    
    init() {
        super.init(nibName: "ProfileViewController", bundle: nil)
        let item = UITabBarItem(title: "Profile", image: UIImage(named: "profile-unselected"), selectedImage: UIImage(named: "profile-selected"))
        self.tabBarItem = item
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.fetchProfileImage { image in
            DispatchQueue.main.async {
                self.avatarImageView.image = image
            }
        }
        
        nameLabel.text = presenter.name
        avatarWidthConstraint.constant = Device.isSmallDevice ? 150 : 200
    }
    
    @IBAction func signOutTapped(_ sender: UIButton) {
        presenter.didTapLogout()
    }
}

extension ProfileViewController: ProfileViewInterface {
    
}
