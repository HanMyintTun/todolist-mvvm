//
//  ItemModel.swift
//  ToDoList
//
//  Created by MyintTun Han on 2/9/21.
//

import Foundation
struct ItemModel : Identifiable {
    let id:String = UUID().uuidString
    let title:String
    let isCompleted:Bool
}
