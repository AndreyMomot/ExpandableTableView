//
//  InitViewController.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

public typealias InitViewControllerType = MVCViewController<InitModelProtocol, InitViewProtocol, InitRouter>

public class InitViewController: InitViewControllerType, UITableViewDelegate, ExpandableHeaderViewDelegate {

    private var dataSource: InitDataSource!

    // MARK: - Initializers
    convenience init(withView view: InitViewProtocol, model: InitModelProtocol, router: InitRouter, dataSource: InitDataSource) {

        self.init(withView: view, model: model, router: router)
        self.dataSource = dataSource
    }

    public required init(withView view: InitViewProtocol!, model: InitModelProtocol!, router: InitRouter?) {
        super.init(withView: view, model: model, router: router)
    }

    // MARK: - View life cycle
    override public func viewDidLoad() {
        super.viewDidLoad()

        self.model.selectIndexPath = IndexPath(row: -1, section: -1)
        self.connectTableViewDependencies()
    }

    private func connectTableViewDependencies() {

        self.customView.tableView.delegate = self
        self.dataSource.regicterNibsForTableView(tableView: self.customView.tableView)
        self.customView.tableView.dataSource = self.dataSource
        let headerNib = UINib.init(nibName: "ExpandableHeaderView", bundle: nil)
        self.customView.tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: ExpandableHeaderView.kHeaderIdentifier)
    }

    // MARK: - Table view delegate
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 58
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (self.model.sections[indexPath.section].expanded) {
            return 44
        } else {
            return 0
        }
    }
    
    public func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: ExpandableHeaderView.kHeaderIdentifier) as! ExpandableHeaderView
        header.customInit(title: self.model.sections[section].genre, subtitle: self.model.sections[section].subtitle, section: section, delegate: self)
        return header
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.model.selectIndexPath = indexPath
        self.model.sections[indexPath.section].subtitle = tableView.cellForRow(at: indexPath)?.textLabel?.text
        self.model.sections[indexPath.section].expanded = !self.model.sections[indexPath.section].expanded
        tableView.beginUpdates()
        tableView.reloadSections([indexPath.section], with: .automatic)
        tableView.endUpdates()
    }
    
    // MARK: - ExpandableHeaderViewDelegate methods
    func toggleSection(header: ExpandableHeaderView, section: Int) {
        self.model.sections[section].expanded = !self.model.sections[section].expanded
        self.customView.tableView.beginUpdates()
        self.customView.tableView.reloadSections([section], with: .automatic)
        self.customView.tableView.endUpdates()
    }
}
