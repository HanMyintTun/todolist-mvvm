//
//  AddView.swift
//  ToDoList
//
//  Created by MyintTun Han on 2/9/21.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText:String = ""
    var body: some View {
        VStack {
            ScrollView{
                TextField("Please write something ... ", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color(#colorLiteral(red: 0.8982162476, green: 0.8982162476, blue: 0.8982162476, alpha: 1)))
                    .cornerRadius(10)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame( height: 55)
                        .frame( maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            
            .navigationTitle("Add an item ✍🏻")
            
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        
    }
}
