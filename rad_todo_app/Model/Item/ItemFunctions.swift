//
//  ItemFunctions.swift
//  rad_todo_app
//
//  Created by Emily Bosakowski on 6/28/18.
//  Copyright © 2018 Emily Bosakowski. All rights reserved.
//

import Foundation

class ItemFunctions {
    
    static func createItem(itemModel: ItemModel) {
        
    }
    
    static func readItems(completion: @escaping () -> ()) {
        if Data.itemModels.count == 0 {
            Data.itemModels.append(ItemModel(title: "Water Plants"))
            Data.itemModels.append(ItemModel(title: "Buy new curtains"))
            Data.itemModels.append(ItemModel(title: "Fold laundry"))
        }
        
        
        //Run this background thread before all others
//        DispatchQueue.global(qos: .userInteractive).async {
//            if Data.itemModels.count == 0 {
//                Data.itemModels.append(ItemModel(title: "Water Plants"))
//                Data.itemModels.append(ItemModel(title: "Buy new curtains"))
//                Data.itemModels.append(ItemModel(title: "Fold laundry"))
//            }
//        }
//
//        DispatchQueue.main.async {
//            completion()
//        }
    }
    
    static func updateItem(itemModel: ItemModel) {
        
    }
    
    static func deleteItem(itemModel: ItemModel) {
        
    }
    
}
