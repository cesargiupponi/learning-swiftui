//
//  TodoItemsListView.swift
//  StateManagement
//
//  Created by Cesar Giupponi Paiva on 12/11/24.
//

import SwiftUI

struct TodoItemsListView: View {
    
    @StateObject var viewModel = TodoItemListsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach($viewModel.todoItems) { $todoItem in
                    TodoItemRow(item: $todoItem.onNewValue({
                        viewModel.reorder()
                    }))
                }
                .onDelete(perform: viewModel.deleteItems(at:))
                .onMove(perform: viewModel.moveItems(from:to:))
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Today's tasks")
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
