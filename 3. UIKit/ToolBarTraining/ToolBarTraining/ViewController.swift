//
//  ViewController.swift
//  ToolBarTraining
//
//  Created by Sena Kurtak on 4.10.2022.
//

import UIKit
import WebKit
class ViewController: UIViewController, UIToolbarDelegate, WKNavigationDelegate {
    /*Programatik bir şekilde 1 sayfanıza barbuttonitems ve UIToolbar eklemeniz gerekmektedir.
     Tool bar 4 yada 5 adet fonksiyon içermesi gerekmektedir.
     Butonların nasıl çalıştığını comment ile detaylı anlatınız.*/
    
    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil , action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        
        toolbarItems = [spacer, refresh]
        
        navigationController?.isToolbarHidden = false
        
        let url = URL(string: "https://www.neonapps.co/")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    @objc  func openTapped(){
        if let url = URL(string: "https://www.neonapps.co/") {
            UIApplication.shared.open(url)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}
