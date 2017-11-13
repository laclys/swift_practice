//
//  ViewController.swift
//  studyUI2
//
//  Created by lac on 2017/11/13.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UISider
        let slider = UISlider(frame: CGRect(x: 20, y: 100, width: 280, height: 30))
        // 设置滑动控件的最大值
        slider.maximumValue = 10
        //设置滑动控件的最小值
        slider.minimumValue = 0
        // 初始滑动控件的值
        slider.value = 5
        // 设置滑动左侧进度条颜色
        slider.minimumTrackTintColor = UIColor.red
        // 设置滑动控件右侧进度条的颜色
        slider.maximumTrackTintColor = UIColor.green
        // 设置滑块颜色
        slider.thumbTintColor = UIColor.blue
        // 添加到视图
        self.view.addSubview(slider)
        // 添加事件触发
        slider.addTarget(self, action: #selector(change), for: UIControlEvents.valueChanged)
        // 拖动结束再触发
        slider.isContinuous = false
        
    }
    
    func change (slider:UISlider) {
        print(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

