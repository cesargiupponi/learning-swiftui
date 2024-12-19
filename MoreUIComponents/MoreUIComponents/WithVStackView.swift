//
//  WithVStackView.swift
//  MoreUIComponents
//
//  Created by Cesar Giupponi Paiva on 09/12/24.
//

import SwiftUI

struct WithVStackView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<1000) { i in
                    HStack {
                        let _ = print("VStack Item \(i)")
                        Text("Item \(i)")
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    WithVStackView()
}
