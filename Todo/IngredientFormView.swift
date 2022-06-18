//
//  IngredientFormView.swift
//  Todo
//
//  Created by 5habu on 2022/06/18.
//

import SwiftUI

struct IngredientFormView: View {
    @EnvironmentObject var store: IngredientStore
    
    var body: some View {
        NavigationView {
            Form {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct IngredientFormView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientFormView()
    }
}
