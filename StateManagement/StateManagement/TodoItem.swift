//
//  TodoItem.swift
//  StateManagement
//
//  Created by Cesar Giupponi Paiva on 12/11/24.
//

import Foundation

struct TodoItem: Codable, Identifiable {
    let id: UUID
    var title: String
    var description: String?
    var isDone: Bool = false
}
