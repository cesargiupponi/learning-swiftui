//
//  NavigationApp.swift
//  Navigation
//
//  Created by Cesar Giupponi Paiva on 12/11/24.
//

import SwiftUI

@main
struct NavigationApp: App {

    enum TabItem: Hashable {
        case todos
        case about
    }

    @State var selectedTab: TabItem = .todos

    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {

                TodoItemsListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("TODos")
                    }
                    .tag(TabItem.todos)

                AboutView()
                    .tabItem {
                        Image(systemName: "questionmark.circle.fill")
                        Text("About")
                    }
                    .tag(TabItem.about)
            }
        }
    }
}
