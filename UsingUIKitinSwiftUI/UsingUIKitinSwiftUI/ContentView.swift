//
//  ContentView.swift
//  UsingUIKitinSwiftUI
//
//  Created by Cesar Giupponi on 01/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        if let url = URL(string: "https://www.apple.com") {
            Webview(url: url)
                .set(navigationPolicy: { navigationAction in
                    navigationAction.navigationType == .linkActivated ? .cancel : .allow
                })
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
