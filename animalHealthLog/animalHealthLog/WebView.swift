//
//  WebView.swift
//  animalHealthLog
//
//  Created by 細川聖矢 on 2020/05/13.
//  Copyright © 2020 Seiya. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var loadUrl:String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: loadUrl)!))
    }
}

//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView(url:URL(string:"https://senzyuchannel.com")!)
//    }
//}
