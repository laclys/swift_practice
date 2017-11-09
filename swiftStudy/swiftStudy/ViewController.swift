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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

