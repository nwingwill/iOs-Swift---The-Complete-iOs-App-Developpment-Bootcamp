//
//  WebView.swift
//  H4X0R News
//
//  Created by Nestor on 10/3/22.
//

import Foundation
import SwiftUI
import WebKit

/// Crear web View

struct WebView : UIViewRepresentable {

    
    
    let urlString : String?
    
//    func makeUIView(context: UIViewRepresentableContext<WebView>) -> some WebView.UIViewType {
//
//        return WKWebView()
//
//    }
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            if let url  = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
        
    }
    
}
