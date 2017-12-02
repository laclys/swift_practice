//
//  ViewController.swift
//  snapKitTest
//
//  Created by lac on 2017/12/3.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIView()
        testView.backgroundColor = UIColor.cyan
        view.addSubview(testView)
        testView.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)    // 链式语法直接定义宽高
            make.center.equalToSuperview()    // 直接在父视图居中
        }
        
    }
}
