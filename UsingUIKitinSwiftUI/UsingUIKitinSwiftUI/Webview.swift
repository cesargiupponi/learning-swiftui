//
//  Webview.swift
//  UsingUIKitinSwiftUI
//
//  Created by Cesar Giupponi on 01/12/24.
//

import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {

    typealias UIViewType = WKWebView

    let url: URL
    var navigationPolicy: ((WKNavigationAction) -> WKNavigationActionPolicy)? = nil

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(URLRequest(url: url))
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {

        var parent: Webview

        init(_ parent: Webview) {
            self.parent = parent
        }

        func webView(
            _ webView: WKWebView,
            decidePolicyFor navigationAction: WKNavigationAction,
            decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
                decisionHandler(parent.navigationPolicy?(navigationAction) ?? .allow)
        }
    }
}

extension Webview {
    func set(navigationPolicy: @escaping (WKNavigationAction) -> WKNavigationActionPolicy) -> Webview {
        var copy = self
        copy.navigationPolicy = navigationPolicy
        return copy
    }
}
