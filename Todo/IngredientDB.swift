//
//  IngredientDB.swift
//  Todo
//
//  Created by 5habu on 2022/06/18.
//

import Foundation
import RealmSwift

class IngredientDB: Object {
    @objc dynamic var id = 0
    @objc dynamic var title = ""
    @objc dynamic var notes = ""
    @objc dynamic var quantity = 1
    @objc dynamic var bought = false
    
    override static func primaryKey() -> String? {
        "id"
    }
}
