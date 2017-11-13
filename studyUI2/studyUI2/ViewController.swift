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
        
        // 创建进度条控件实例
        let progressView = UIProgressView(progressViewStyle: UIProgressViewStyle.default)
        // 设置位置和高度
        progressView.frame = CGRect(x: 20, y: 150, width: 280, height: 10)
        // 设置当前进度
        progressView.progress = 0.5
        self.view.addSubview(progressView)
        // 步进器
        let stepper = UIStepper(frame: CGRect(x: 180,y: 180, width: 0, height: 0))
        stepper.tintColor = UIColor.red
        stepper.minimumValue = 0
        stepper.maximumValue = 100
        // 设置步长
        stepper.stepValue = 1
        self.view.addSubview(stepper)
    }
    
    func change (slider:UISlider) {
        print(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

