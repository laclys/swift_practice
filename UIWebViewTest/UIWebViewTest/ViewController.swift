//
//  ViewController.swift
//  UIWebViewTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建WebView视图
        let webView = UIWebView(frame: self.view.bounds)
        // 创建网页url
        let url = URL(string: "https://www.baidu.com/")
        // 创建请求
        let req = URLRequest(url: url!)
        // 加载网页
        webView.loadRequest(req)
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

