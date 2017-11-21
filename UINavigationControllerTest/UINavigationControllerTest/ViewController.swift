//
//  ViewController.swift
//  UINavigationControllerTest
//
//  Created by lac on 2017/11/21.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        self.title = "这是第二个视图控制器"
        
        // 在导航结构中控制器跳转的视图控制器会默认带一个返回的按钮。点击按钮返回上一层。
        // 我们也可以用代码实现
        let item = UIBarButtonItem(title: "Pop", style: UIBarButtonItemStyle.plain, target: self, action: #selector(pop))
        self.navigationItem.rightBarButtonItem = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func pop() {
        // 返回被弹出的试图控制器
        self.navigationController?.popViewController(animated: true)
        // 使用匿名函数变量 可以消除“返回值未使用”的警告
        _ = self.navigationController?.popViewController(animated: true)
    }

}
