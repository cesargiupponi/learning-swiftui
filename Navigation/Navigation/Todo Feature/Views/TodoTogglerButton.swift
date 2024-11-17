//
//  TodoTogglerButton.swift
//  Navigation
//
//  Created by Cesar Giupponi Paiva on 13/11/24.
//

import SwiftUI

struct TodoTogglerButton: View {
    
    @Binding var state: Bool
    
    var body: some View {
        
        Button {
            withAnimation {
                state.toggle()
            }
        } label: {
            GeometryReader { proxy in
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(.blue)
                    
                    if state {
                        Circle()
                            .frame(width: proxy.size.width * 0.8)
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .scaledToFit()
        .buttonStyle(.borderless)
    }
}

struct TodoTogglerButton_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(false) { state in
            TodoTogglerButton(state: state)
        }
    }
    
}
