//
//  LoginView.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 19/11/24.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        SyncingView { proxy in
            Group {
                Button("Sign up") {}
                Button("Log in") {}
            }
            .syncWidth(using: proxy)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
            .font(.headline)
        }
    }
}

#Preview {
    LoginView()
}
