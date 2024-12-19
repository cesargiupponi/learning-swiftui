//
//  WithLazyVStack.swift
//  MoreUIComponents
//
//  Created by Cesar Giupponi Paiva on 09/12/24.
//

import SwiftUI

struct WithLazyVStack: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<1000) { i in
                    HStack {
                        let _ = print("LazyVStack Item \(i)")
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
    WithLazyVStack()
}
