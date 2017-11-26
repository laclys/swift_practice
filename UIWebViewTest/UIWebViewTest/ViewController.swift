//
//  ViewController.swift
//  UIWebViewTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController{
    
    var wkView:WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建网页配置
        let config = WKWebViewConfiguration()
        // 对网页视图实例化
        wkView = WKWebView(frame: self.view.frame, configuration: config)
        self.view.addSubview(wkView!)
        let url = URL(string: "https://www.baidu.com/")
        let req = URLRequest(url: url!)
        wkView!.load(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

