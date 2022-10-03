//
//  ContentView.swift
//  ToDoList
//
//  Created by Johnny Lion on 10/2/22.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift","Builds Apps", "Change the World", "Bring the Awesome", "Take a Vacation"]
    
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                }                
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}

