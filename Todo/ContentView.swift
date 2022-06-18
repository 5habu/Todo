//
//  ContentView.swift
//  Todo
//
//  Created by 5habu on 2022/06/18.
//

import SwiftUI

struct ContentView: View {
    @State var newItem: String = ""
    @State var todoList: [String] = ["a","b"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Add New").font(.largeTitle).padding(.leading)
                Spacer()
            }
            HStack {
                TextField("New Plan", text: $newItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
            
                Button(action: {
                    self.todoList.append(self.newItem)
                    self.newItem = ""
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 50, height: 30)
                            .foregroundColor(.green)
                        
                        Text("add").foregroundColor(.white)
                    }
                }
            }
            
            HStack {
                Text("aaa").font(.largeTitle).padding(.leading)
                Spacer()
            }
            
            List(todoList, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
