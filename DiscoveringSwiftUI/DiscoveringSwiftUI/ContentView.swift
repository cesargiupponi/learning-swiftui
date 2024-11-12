//
//  ContentView.swift
//  DiscoveringSwiftUI
//
//  Created by Cesar Paiva on 16/10/24.
//

import SwiftUI

struct ContentView: View {

    @State var userName = String()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("hello.title")
                .foregroundColor(.red)
                .multilineTextAlignment(.leading)
            Text("Current time is:")
            Text(Date(), style: .time)
                .redacted(reason: .placeholder)

            TextField("What's your name?", text: $userName)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .autocapitalization(.words)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
