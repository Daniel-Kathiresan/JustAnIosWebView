//
//  ViewController.swift
//  uiKitWebView
//
//  Created by Daniel Kathiresan on 23/3/2023.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    let url = URL(string: "https://www.google.com")!

    override func viewDidLoad() {
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
        super.viewDidLoad()
        
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

