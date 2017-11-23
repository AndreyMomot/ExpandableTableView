//
//  InitView.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

public protocol InitViewProtocol: NSObjectProtocol {

    var tableView: UITableView! { get }
}

public class InitView: UIView, InitViewProtocol{

    // MARK: - InitView interface methods
    @IBOutlet weak public var tableView: UITableView!

    // MARK: - Overrided methods
    override public func awakeFromNib() {
        super.awakeFromNib()
    }
}
