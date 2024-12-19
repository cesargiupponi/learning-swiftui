//
//  WithGridView.swift
//  MoreUIComponents
//
//  Created by Cesar Giupponi Paiva on 09/12/24.
//

import SwiftUI

struct WithGridView: View {
    var body: some View {
        
        let rows: [GridItem] = (1...10).map { _ in
            GridItem(.fixed(50), spacing: 16)
        }
        
        ScrollView([.horizontal, .vertical]) {
            LazyHGrid(rows: rows, spacing: 16) {
                ForEach(1..<10) { i in
                    let currentSection = i * 10
                    Section {
                        ForEach(currentSection..<(currentSection + 10)) { j in
                            Text("\(j)")
                        }
                    } header: {
                        Text("\(currentSection)'s")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

#Preview {
    WithGridView()
}
