//
//  ViewController.swift
//  UITabBarControllerTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置标题
        self.tabBarItem.title = "CBA"
        self.view.backgroundColor = UIColor.blue
        // 使用系统风格标签
        let item = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.history, tag: 1)
        self.tabBarItem = item
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

}
