//
//  AdvancedDataFlowApp.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 18/11/24.
//

import SwiftUI

@main
struct AdvancedDataFlowApp: App {
    
    var body: some Scene {
        WindowGroup {
            TabView {
                FirstFeatureView()
                    .tabItem {
                        Image(systemName: "1.circle.fill")
                        Text("One")
                    }
                    .environment(\.analytics, MockAnalytics())
                SecondFeatureView()
                    .tabItem {
                        Image(systemName: "2.circle.fill")
                        Text("Two")
                    }
                ThirdFeatureView()
                    .tabItem {
                        Image(systemName: "3.circle.fill")
                        Text("Three")
                    }
                LoginView()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Login")
                    }
            }
        }
    }
}
