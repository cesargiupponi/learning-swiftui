//
//  WithListView.swift
//  MoreUIComponents
//
//  Created by Cesar Giupponi Paiva on 09/12/24.
//

import SwiftUI

struct WithListView: View {
    var body: some View {
        List {
            ForEach(0..<10_000) { i in
                HStack {
                    let _ = print("List Item \(i)")
                    Text("Item \(i)")
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    WithListView()
}
