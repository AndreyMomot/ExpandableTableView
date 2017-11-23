//
//  InitModel.swift
//  ExtensibleTableView
//
//  Created by Andrei Momot on 11/23/17.
//  Copyright © 2017 Andrey Momot. All rights reserved.
//

import UIKit

public protocol InitModelProtocol: NSObjectProtocol {
    var sections: [Section] { get set }
    var selectIndexPath: IndexPath! { get set }
}

public class InitModel: NSObject, InitModelProtocol {

    override init() {
        self.sections = []
        super.init()

        self.sections = self.getSections()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func getSections() -> [Section] {
        let sections = [
            Section(genre: "🦁 Animation",
                    movies: ["The Lion King", "The Incredibles"],
                    expanded: false,
                    subtitle: "Please select a movie"),
            Section(genre: "💥 Superhero",
                    movies: ["Guardians of the Galaxy", "The Flash", "The Avengers", "The Dark Knight"],
                    expanded: false,
                    subtitle: "Please select a movie"),
            Section(genre: "👻 Horror",
                    movies: ["The Walking Dead", "Insidious", "Conjuring"],
                    expanded: false,
                    subtitle: "Please select a movie")
        ]
        return sections
    }

    // MARK: - InitModel methods
    public var sections: [Section]
    public var selectIndexPath: IndexPath!
}
