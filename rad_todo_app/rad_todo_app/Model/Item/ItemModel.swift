//
//  ItemModel.swift
//  rad_todo_app
//
//  Created by Emily Bosakowski on 6/28/18.
//  Copyright © 2018 Emily Bosakowski. All rights reserved.
//

import Foundation

class ItemModel {
    var id: String!
    var title: String?
//    var completed: Bool!
    
    init(title: String) {
        id = UUID().uuidString
        self.title = title
    }
}
