//
//  AdvancedLayoutView.swift
//  DiscoveringTheLayoutSystem
//
//  Created by Cesar Paiva on 12/11/24.
//

import SwiftUI

extension VerticalAlignment {

    enum AccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }

    static let accountAndName = VerticalAlignment(AccountAndName.self)
}

struct AdvancedLayoutView: View {
    var body: some View {
        HStack(alignment: .accountAndName) {
            VStack {
                Text("@cesargiupponi")
                    .alignmentGuide(.accountAndName, computeValue: { dimension in
                        dimension[.firstTextBaseline]
                    })
                    .padding()
                    .background(Color.blue)

                Image("cesargiupponi")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .background(Color.yellow)
            }

            VStack {
                Text("Full name:")
                    .background(Color.red)
                Text("Cesar Giupponi")
                    .alignmentGuide(.accountAndName, computeValue: { dimension in
                        dimension[.firstTextBaseline]
                    })
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
            }
        }
    }
}

#Preview {
    AdvancedLayoutView()
}
