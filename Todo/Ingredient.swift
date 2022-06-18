//
//  Ingredient.swift
//  Todo
//
//  Created by 5habu on 2022/06/18.
//

import Foundation

struct Ingredient: Identifiable {
    let id: Int
    let title: String
    let notes: String
    let bought: Bool
    let quantity: Int
}

// MARK: Convenience init
extension Ingredient {
  init(ingredientDB: IngredientDB) {
    id = ingredientDB.id
    title = ingredientDB.title
    notes = ingredientDB.notes
    bought = ingredientDB.bought
    quantity = ingredientDB.quantity
  }
}

