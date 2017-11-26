//
//  ViewController.swift
//  UIScrollViewTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 进行ScrollView的实例化
        let scView = UIScrollView(frame: self.view.bounds)
        // 将滚动视图添加到当前页面
        self.view.addSubview(scView)
        // 创建两个内容视图
        let subView1 = UIView(frame: self.view.frame)
        subView1.backgroundColor = UIColor.darkGray
        let subView2 = UIView(frame: CGRect(x: self.view.frame.size.width, y: 0,width: self.view.frame.size.width, height: self.view.frame.size.height))
        subView2.backgroundColor = UIColor.red
        // 将视图添加进UIScrollView视图中
        scView.addSubview(subView1)
        scView.addSubview(subView2)
        // 设置UIScrollView实例
        scView.contentSize = CGSize(width: self.view.frame.size.width*2, height: self.view.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

