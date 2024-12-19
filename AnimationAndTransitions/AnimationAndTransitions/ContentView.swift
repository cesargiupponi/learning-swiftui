//
//  ContentView.swift
//  AnimationAndTransitions
//
//  Created by Cesar Giupponi Paiva on 03/12/24.
//

import SwiftUI

struct ScalingButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(15)
            .font(.headline)
            .animation(nil, value: configuration.isPressed)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: configuration.isPressed)
    }
    
}

struct ContentView: View {
    
    @State var buttonTapped = false
    @State var showImage = false
    
    var body: some View {
        VStack {
            
            Button("Click me!") {
                buttonTapped.toggle()
            }
            .buttonStyle(ScalingButtonStyle())
            
            Button(showImage ? "Make an Image disappear!" : "Make an Image appear!") {
                withAnimation {
                    showImage.toggle()
                }
            }
            .buttonStyle(ScalingButtonStyle())
            
            if showImage {
                Image("pikachu")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .transition(.fly)
            } else {
                Spacer()
                    .frame(height: 200)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
