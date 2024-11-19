//
//  ParentView.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 19/11/24.
//

import SwiftUI

struct ParentView: View {
    
    @State var textInput = String()
    
    var body: some View {
        VStack {
            Text("This what my child asked me to say: \(textInput)")
            
            ChildView()
        }
        .onPreferenceChange(TextFieldInputPreferenceKey.self) { newValue in
            textInput = newValue
        }
    }
}

#Preview {
    ParentView()
}
