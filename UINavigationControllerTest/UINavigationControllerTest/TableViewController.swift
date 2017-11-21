//
//  TableViewController.swift
//  UINavigationControllerTest
//
//  Created by lac on 2017/11/21.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置导航栏颜色
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        // 创建导航栏实例
        let barItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(click))
        self.navigationItem.leftBarButtonItem = barItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    // 实现导航功能
    func click () {
        let viewController = ViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}
