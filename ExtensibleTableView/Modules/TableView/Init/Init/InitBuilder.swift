//
//  InitBuilder.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

public class InitBuilder: NSObject {

    public class func viewController() -> InitViewController {
        let view = InitView.create() as InitViewProtocol
        let model: InitModelProtocol = InitModel()
        let dataSource = InitDataSource(withModel: model)
        let router = InitRouter()

        let viewController = InitViewController(withView: view, model: model, router: router, dataSource: dataSource)
        return viewController
    }
}
