//
//  Binding+Extension.swift
//  StateManagement
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
}
