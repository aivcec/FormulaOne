//
//  BaseWireframe.swift
//  FormulaOne
//
//  Created by Antonio Ivcec on 23/10/18.
//  Copyright © 2018 Antonio Ivcec. All rights reserved.
//

import UIKit

class BaseWireframe {
    
    fileprivate unowned var unownedViewController: UIViewController
    
    //to retain view controller reference upon first access
    fileprivate var temporaryStoredViewController: UIViewController?
    
    init(viewController: UIViewController) {
        temporaryStoredViewController = viewController
        unownedViewController = viewController
    }
    
}

extension BaseWireframe: WireframeInterface {
    func showErrorAlert(with message: String?) {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        showAlert(with: "Something went wrong", message: message, actions: [okAction])
    }
    
    func showAlert(with title: String?, message: String?) {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        showAlert(with: title, message: message, actions: [okAction])
    }
    
    func showAlert(with title: String?, message: String?, actions: [UIAlertAction]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { alert.addAction($0) }
        navigationController?.present(alert, animated: true, completion: nil)
    }
}

extension BaseWireframe {
    
    var viewController: UIViewController {
        defer { temporaryStoredViewController = nil }
        return unownedViewController
    }
    
    var navigationController: UINavigationController? {
        if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
        
        return viewController.navigationController
    }
}

extension UINavigationController {
    
    func pushWireframe(_ wireframe: BaseWireframe, animated: Bool = true) {
        self.pushViewController(wireframe.viewController, animated: animated)
    }
    
    func setRootWireframe(_ wireframe: BaseWireframe, animated: Bool = true) {
        self.setViewControllers([wireframe.viewController], animated: animated)
    }
}
