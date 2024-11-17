//
//  AboutView.swift
//  Navigation
//
//  Created by Cesar Paiva on 15/11/24.
//

import SwiftUI

struct AboutView: View {

    @State var isMoreInfoPresented = false

    var body: some View {
        VStack {
            Text("This app was made during\na SwiftUI study 🤓💻")
                .multilineTextAlignment(.center)
                .padding()
            Button("More info?") {
                isMoreInfoPresented = true
            }
        }
        .sheet(isPresented: $isMoreInfoPresented , content: {
            MoreInfoView()
                .presentationDetents([.medium, .large, .fraction(0.8)])
        })
    }
}

#Preview {
    AboutView()
}
