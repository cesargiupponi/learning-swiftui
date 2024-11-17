//
//  MoreInfoView.swift
//  Navigation
//
//  Created by Cesar Paiva on 15/11/24.
//

import SwiftUI

struct MoreInfoView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

#Preview {
    MoreInfoView()
}
