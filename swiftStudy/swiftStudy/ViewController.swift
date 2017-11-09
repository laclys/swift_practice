//
//  ViewController.swift
//  swiftStudy
//
//  Created by lac on 2017/11/9.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 200,height:30))
        label.text = "test"
        // 将其放到视图内
        self.view.addSubview(label)
        // 创建了一个自定义UILabel控件
        let label2 = UILabel(frame: CGRect(x:20, y: 60,width: 200, height: 30))
        label2.text = "这里是文本2"
        label2.font = UIFont.boldSystemFont(ofSize: 20)
        label2.textColor = UIColor.red
        // 阴影颜色
        label2.shadowColor = UIColor.green
        // 阴影位移
        label2.shadowOffset = CGSize(width: 2, height: 2)
        // 文字对齐方式
        label2.textAlignment = NSTextAlignment.center
        self.view.addSubview(label2)
        let label3 = UILabel(frame: CGRect(x:20, y: 100, width: 200, height: 130))
        label3.text = "长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本长文本"
        // 设置显示行数
        label3.numberOfLines = 3
        self.view.addSubview(label3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

