//
//  ViewController.swift
//  UIScrollViewTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 进行ScrollView的实例化
        let scView = UIScrollView(frame: self.view.frame)
        // 将滚动视图添加到当前页面
        self.view.addSubview(scView)
        // 设置代理
        scView.delegate = self
        imageView = UIImageView(image: UIImage(named: "pic001"))
        imageView?.frame = self.view.frame
        scView.addSubview(imageView!)
        scView.contentSize = self.view.frame.size
        
        // 开启自动定位分页效果
        scView.isPagingEnabled = true
        
        // 设置缩放限度
        scView.minimumZoomScale = 0.5
        scView.maximumZoomScale = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView!
    }

}

