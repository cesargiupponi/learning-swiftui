//
//  PreferenceKey.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 19/11/24.
//

import SwiftUI

struct TextFieldInputPreferenceKey: PreferenceKey {
    
    static var defaultValue: String = String()
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }    
}

struct MaxWidthPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

extension View {
    func textFieldInput(_ textInput: String) -> some View {
        self.preference(key: TextFieldInputPreferenceKey.self, value: textInput)
    }
}
