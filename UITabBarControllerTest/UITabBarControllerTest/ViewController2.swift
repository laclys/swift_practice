//
//  ViewController2.swift
//  UITabBarControllerTest
//
//  Created by lac on 2017/11/26.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // 设置标题
        self.tabBarItem.title = "NBA"
        self.view.backgroundColor = UIColor.clear
        // 设置提示文字bg
        self.tabBarItem.badgeColor = UIColor.black
        // 设置提示文字
        self.tabBarItem.badgeValue = "msg"
        // 使用系统风格标签
//        let item = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.bookmarks, tag: 1)
//        self.tabBarItem = item
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
