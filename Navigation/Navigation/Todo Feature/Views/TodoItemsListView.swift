//
//  TodoItemsListView.swift
//  Navigation
//
//  Created by Cesar Giupponi Paiva on 12/11/24.
//

import SwiftUI

struct TodoItemsListView: View {
    
    @StateObject var viewModel = TodoItemListsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach($viewModel.todoItems) { $todoItem in
                    NavigationLink(value: todoItem) {
                        TodoItemRow(item: $todoItem.onNewValue({
                            viewModel.reorder()
                        }))

                    }
                }
                .onDelete(perform: viewModel.deleteItems(at:))
                .onMove(perform: viewModel.moveItems(from:to:))
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Today's tasks")
            .navigationDestination(for: TodoItem.self, destination: { todoItem in
                let todoItemBinding = Binding {
                    viewModel.todoItems.first(where: { $0.id == todoItem.id})!
                } set: { newItem in
                    let index = viewModel.todoItems.firstIndex(where: { $0.id == todoItem.id})!
                    viewModel.todoItems[index] = newItem
                }
                TodoItemDetailView(item: todoItemBinding)
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    EditButton()
                })
            }
            .onAppear {
                viewModel.loadItems()
            }
        }
    }
}

#Preview {
    TodoItemsListView()
}
