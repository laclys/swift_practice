//
//  ViewController.swift
//  UIViewControllerTest
//
//  Created by lac on 2017/11/20.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touch(_ sender: AnyObject) {
        let viewController = ViewControllerTwo()
        viewController.data = "这是第一个页面传过来的data~"
        // 跳转到第二个界面
        self.present(viewController, animated: true, completion: nil)
    }

}

