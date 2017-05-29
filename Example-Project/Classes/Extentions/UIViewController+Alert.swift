//
//  UIViewController+Alert.swift
//  Example-Project
//
//  Created by sasha klavsut on 29.05.17.
//  Copyright © 2017 sasha klavsut. All rights reserved.
//

import UIKit


extension UIViewController {
    func showAlert(_ title: String, message: String) {
        let alertController = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertControllerStyle.alert
        )
        let confirmAction = UIAlertAction(
            title: "Ок",
            style: UIAlertActionStyle.default) { (action) in
        }
        alertController.addAction(confirmAction)
        self.present(alertController, animated: true, completion: nil)
    }
}


func showAlertWindow(_ title: String, message: String) {
    let alertController = UIAlertController(
        title: title,
        message: message,
        preferredStyle: UIAlertControllerStyle.alert
    )
    let confirmAction = UIAlertAction(
        title: "Ок",
        style: UIAlertActionStyle.default) { (action) in
    }
    alertController.addAction(confirmAction)
    
    if let window = UIApplication.shared.keyWindow {
        window.rootViewController?.present(alertController, animated: true, completion: nil)
    }
    
}
