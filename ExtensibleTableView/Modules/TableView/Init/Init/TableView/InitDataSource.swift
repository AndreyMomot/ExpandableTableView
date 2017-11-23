//
//  InitDataSource.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

class InitDataSource: NSObject, UITableViewDataSource {

    private let model: InitModelProtocol

    init(withModel model: InitModelProtocol) {
        self.model = model
    }

    func regicterNibsForTableView(tableView: UITableView) {
        InitTableViewCell.register(for:tableView)
    }

    // MARK: - UITableViewDataSource

    internal func numberOfSections(in tableView: UITableView) -> Int {
        return self.model.sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.sections[section].movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.deque(for: indexPath) as InitTableViewCell
        cell.textLabel?.text = self.model.sections[indexPath.section].movies[indexPath.row]
        cell.accessoryType = (indexPath == self.model.selectIndexPath) ? .checkmark : .none

        return cell
    }
}
