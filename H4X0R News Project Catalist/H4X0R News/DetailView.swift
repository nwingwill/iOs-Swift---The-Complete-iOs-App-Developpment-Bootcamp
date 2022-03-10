//
//  DetailView.swift
//  H4X0R News
//
//  Created by Nestor on 10/3/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url : String
    
    var body: some View {
//        Text("Hello, World!")
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
