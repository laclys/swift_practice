//
//  ViewController.swift
//  UITableViewTest2
//
//  Created by lac on 2017/11/27.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class Product: NSObject {
    
    var name:String?
    
    var price:String?
    
    var ImageName:String?
    
    var subTitle:String?
    
    
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataArray: Array<Product>?
    override func viewDidLoad() {
        super.viewDidLoad()
        let pro1 = Product()
        pro1.ImageName = "productImage"
        pro1.name = "御坂美琴"
        pro1.subTitle = "levl5超电磁炮"
        pro1.price = "999"
        let pro2 = Product()
        pro2.ImageName = "productImage"
        pro2.name = "御坂美琴"
        pro2.subTitle = "levl5超电磁炮"
        pro2.price = "999"
        // 对数据初始化
        dataArray = [pro1, pro2]
        // 创建UITableView实例
        let tableView = UITableView(frame: self.view.frame, style: .grouped)
        //注册cell
        tableView.register(UINib.init(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCellId")
        self.view.addSubview(tableView)
        // 设置数据源和代理
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellId", for: indexPath) as! ProductTableViewCell
        let model = dataArray![indexPath.row]
        cell.iconView.image = UIImage(named: model.ImageName!)
        cell.proTitle.text = model.name
        cell.proDetail.text = model.subTitle
        cell.price.text = model.price
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153
    }

}

