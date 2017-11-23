//
//  InitRouter.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

public class InitRouter: NSObject {

    // Navigation example method
    func navigateToSomeScreen(from vc: UIViewController, withBackgroundColor backgroundColor: UIColor) {
        // Create new screen. Here you should use another Builder to create it.
        let someScreenVC = UIViewController()
        // Set passed parameters
        someScreenVC.view.backgroundColor = backgroundColor

        if UI_USER_INTERFACE_IDIOM() == .pad {
            someScreenVC.modalPresentationStyle = .pageSheet
            someScreenVC.modalTransitionStyle = .crossDissolve

            vc.navigationController?.present(someScreenVC, animated: true, completion: nil)
        } else {
            vc.navigationController?.pushViewController(someScreenVC, animated: true)
        }
    }
}
