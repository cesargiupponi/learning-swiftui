//
//  ChildView.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 19/11/24.
//

import SwiftUI

struct ChildView: View {
    
    @State var text = String()
    
    var body: some View {
        Form {
            TextField("Write something", text: $text)
        }
        .textFieldInput(text)
    }
}

#Preview {
    ChildView()
}
