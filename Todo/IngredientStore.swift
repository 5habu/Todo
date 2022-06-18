//
//  IngredientStore.swift
//  Todo
//
//  Created by 5habu on 2022/06/18.
//

import Foundation
import RealmSwift

final class IngredientStore: ObservableObject {
    private var ingredientResults: Results<IngredientDB>
    private var boughtIngredientResults: Results<IngredientDB>
    
    init(realm: Realm) {
        ingredientResults = realm.objects(IngredientDB.self).filter("bought = false")
        boughtIngredientResults = realm.objects(IngredientDB.self).filter("bought = true")
    }
    
    var ingredients: [Ingredient] {
        ingredientResults.map(Ingredient.init)
    }
    
    var boughtIngredients: [Ingredient] {
        boughtIngredientResults.map(Ingredient.init)
    }
}

extension IngredientStore {
    // 操作の設定
    func create(title: String, notes: String, quantity: Int) {
        objectWillChange.send()
        
        do {
            let realm = try Realm()
            
            // IDは新規採番
            let ingredientDB = IngredientDB()
            ingredientDB.id = UUID().hashValue
            ingredientDB.title = title
            ingredientDB.notes = notes
            ingredientDB.quantity = quantity
            
            try realm.write {
                realm.add(ingredientDB)
            }
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func toggleBought(ingredient: Ingredient) {
        
    }
    
    func update(ingredientID: Int, title: String, notes: String, quantity: Int) {
        
    }
    
    func delete(ingredientID: Int) {
        
    }
}

