//
//  TodoItemDetailView.swift
//  Navigation
//
//  Created by Cesar Paiva on 15/11/24.
//

import SwiftUI

struct TodoItemDetailView: View {

    @Binding var item: TodoItem

    var body: some View {
        Form {
            TextField("Title", text: $item.title)
                .font(.headline)
            TextField("Description", text: $item.description.whenEmpty(String()))
                .font(.subheadline)
        }
        .navigationTitle("Edit")
    }
}

struct TodoItemDetailView_Previews: PreviewProvider {

    static let todoItem = TodoItem(
        id: UUID(),
        title: "Buy some bread 🥖"
    )

    static var previews: some View {
        StatefulPreviewWrapper(todoItem) { todoItem in
            TodoItemDetailView(item: todoItem)
        }
    }
}
