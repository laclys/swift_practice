//
//  ViewController.swift
//  studyUI2
//
//  Created by lac on 2017/11/13.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

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
        
        // 选择控制器
        let pickerView = UIPickerView(frame: CGRect(x: 20, y: 210, width: 280, height: 200))
        // 设置代理
        pickerView.delegate = self
        // 设置数据源
        pickerView.dataSource = self
        self.view.addSubview(pickerView)
        // UISreachBar
        let searchBar = UISearchBar(frame: CGRect(x: 20, y: 350, width: 100, height: 280))
        // 设置控件风格
        searchBar.searchBarStyle = UISearchBarStyle.minimal
        // 将控件添加到当前视图
        self.view.addSubview(searchBar)
    }
    
    func change (slider:UISlider) {
        print(slider.value)
    }
    // 协议方法 需要返回选择控制器控件每组的行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    // 需要返回选择控制器的分组数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    // 返回每个分组中每行数据的标题
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "第\(component+1)组第\(row)行"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

