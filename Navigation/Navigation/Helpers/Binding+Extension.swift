//
//  Binding+Extension.swift
//  Navigation
//
//  Created by Cesar Giupponi Paiva on 13/11/24.
//

import SwiftUI

extension Binding {
    
    func onNewValue(_ sideEffect: @escaping() -> Void) -> Binding<Value> {
        Binding(
            get: { wrappedValue },
            set: {
                wrappedValue = $0
                sideEffect()
            }
        )
    }

    func whenEmpty<Wrapped>(_ defaultValue: Wrapped) -> Binding<Wrapped> where Value == Wrapped? {
        Binding<Wrapped> {
            wrappedValue ?? defaultValue
        } set: { newValue in
            wrappedValue = newValue
        }

    }
}
