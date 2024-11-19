//
//  EnvironmentKeys.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 18/11/24.
//

import SwiftUI

private struct AnalyticsEnvironmentKey: EnvironmentKey {
    static let defaultValue: Analytics = Analytics()
}

extension EnvironmentValues {
    var analytics: Analytics {
        get {
            self[AnalyticsEnvironmentKey.self]
        }
        set {
            self[AnalyticsEnvironmentKey.self] = newValue
        }
    }
}
