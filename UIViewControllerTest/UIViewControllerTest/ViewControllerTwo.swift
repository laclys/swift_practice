//
//  ViewControllerTwo.swift
//  UIViewControllerTest
//
//  Created by lac on 2017/11/20.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 添加返回btn
        self.view.backgroundColor = UIColor.red
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        button.setTitle("返回", for: UIControlState())
        button.addTarget(self, action: #selector(ret), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func ret() {
        self.dismiss(animated: true, completion: nil)
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
