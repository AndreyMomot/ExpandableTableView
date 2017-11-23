//
//  Section.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/22/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import Foundation

public struct Section {
    public var genre: String!
    public var movies: [String]!
    public var expanded: Bool!
    public var subtitle: String!
    
    init(genre: String, movies: [String], expanded: Bool, subtitle: String) {
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
        self.subtitle = subtitle
    }
}
