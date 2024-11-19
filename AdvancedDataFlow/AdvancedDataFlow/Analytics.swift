//
//  Analytics.swift
//  AdvancedDataFlow
//
//  Created by Cesar Giupponi Paiva on 18/11/24.
//

import Foundation

class Analytics {
    
    func send(tag: String) {
        print("Tag \(tag) was sent")
    }
}

class MockAnalytics: Analytics {
    override func send(tag: String) {
        print("Overriden method")
    }
}
