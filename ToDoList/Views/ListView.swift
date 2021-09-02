//
//  ListView.swift
//  ToDoList
//
//  Created by MyintTun Han on 2/9/21.
//

import SwiftUI

struct ListView: View {
    @State var items:[ItemModel] = [
        ItemModel(title: "This is first item", isCompleted: true),
        ItemModel(title: "This is second item", isCompleted: true),
        ItemModel(title: "This is third item", isCompleted: false),
    ]
    var body: some View {
       
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(leading: EditButton(),
                            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        
    }
}

