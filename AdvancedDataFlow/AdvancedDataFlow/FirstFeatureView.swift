//
//  FirstFeatureView.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 18/11/24.
//

import SwiftUI

struct FirstFeatureView: View {
        
    @Environment(\.analytics) var analytics: Analytics
    
    var body: some View {
        Text("Feature 1")
            .onAppear {
                analytics.send(tag: "Feature_01")
            }
    }
}

#Preview {
    FirstFeatureView()
}
