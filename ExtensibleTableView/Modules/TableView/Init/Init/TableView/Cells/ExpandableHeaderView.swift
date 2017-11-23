//
//  ExpandableHeaderView.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/22/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

protocol ExpandableHeaderViewDelegate {
    func toggleSection(header: ExpandableHeaderView, section: Int)
}

class ExpandableHeaderView: UITableViewHeaderFooterView {
    var delegate: ExpandableHeaderViewDelegate?
    var section: Int!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderView)))
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(selectHeaderView)))
    }
    
    @objc func selectHeaderView(gesture: UITapGestureRecognizer) {
        let cell = gesture.view as! ExpandableHeaderView
        delegate?.toggleSection(header: self, section: cell.section)
    }
    
    func customInit(title: String, subtitle: String, section: Int, delegate: ExpandableHeaderViewDelegate) {
        
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        self.section = section
        self.delegate = delegate
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.titleLabel?.textColor = UIColor.white
        self.subtitleLabel?.textColor = UIColor.white
        self.subtitleLabel?.alpha = 0.7
        self.contentView.backgroundColor = UIColor.darkGray
    }
}
