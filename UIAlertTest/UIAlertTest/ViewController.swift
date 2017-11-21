//
//  ViewController.swift
//  UIAlertTest
//
//  Created by lac on 2017/11/21.
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

    @IBAction func pop(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "警告警告~！", message: "警告内容", preferredStyle: .alert)
        let alertAction1 = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let alertAction2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(alertAction1)
        alertController.addAction(alertAction2)
        self.present(alertController,animated: true,completion: nil)
    }

}
