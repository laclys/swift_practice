//
//  ViewController.swift
//  UITableViewTest
//
//  Created by lac on 2017/11/27.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray: Array<String>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 对数据源进行初始化
        dataArray = ["第一行", "第二行", "第三行", "第四行", "第五行"]
        // 创建UITableView实例
        let tableView = UITableView(frame: self.view.frame, style: .plain)
        // 注册cell
        tableView.register(NSClassFromString("UITableViewCell"), forCellReuseIdentifier: "TableViewCellId")
        self.view.addSubview(tableView)
        
        // 设置数据源与代理
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 设置列表有多少行
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    // 设置每行数据的数据载体Cell视图
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 根据注册的Cell类Id值获取到载体Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath)
        // 进行标题设置
        cell.textLabel?.text = dataArray?[indexPath.row]
        return cell
    }


}

