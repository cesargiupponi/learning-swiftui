//
//  SecondFeatureView.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 18/11/24.
//

import SwiftUI

struct SecondFeatureView: View {
    
    @Environment(\.analytics) var analytics: Analytics
    
    var body: some View {
        Text("Feature 2")
            .onAppear {
                analytics.send(tag: "Feature_02")
            }
    }
}

#Preview {
    SecondFeatureView()
}
