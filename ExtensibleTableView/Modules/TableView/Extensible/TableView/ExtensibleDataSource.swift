//
//  ExtensibleDataSource.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/22/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

class ExtensibleDataSource: NSObject {
        
//    weak var cellDelegate: ExtensibleCellDelegate?
//    private let model: ExtensibleModelProtocol
//
//    init(withModel model: ExtensibleModelProtocol) {
//        self.model = model
//    }
//
//    func regicterNibsForTableView(tableView: UITableView) {
//        ExtensibleTableViewCell.register(for:tableView)
//
//    }
//
//    // MARK: - UITableViewDataSource
//    internal func numberOfSections(in tableView: UITableView) -> Int {
//        return self.model.sections.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.model.sections[section].movies.count
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if (self.model.sections[indexPath.section].expanded) {
//            return 44
//        } else {
//            return 0
//        }
//    }
//
//    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.model.selectIndexPath = indexPath
//        self.model.sections[indexPath.section].subtitle = tableView.cellForRow(at: indexPath)?.textLabel?.text
//        self.model.sections[indexPath.section].expanded = !self.model.sections[indexPath.section].expanded
//        tableView.beginUpdates()
//        tableView.reloadSections([indexPath.section], with: .automatic)
//        tableView.endUpdates()
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.deque(for: indexPath) as ExtensibleTableViewCell
//        cell.delegate = cellDelegate
//        cell.textLabel?.text = self.model.sections[indexPath.section].movies[indexPath.row]
//        cell.accessoryType = (indexPath == self.model.selectIndexPath) ? .checkmark : .none
//
//        return cell
//    }
}
