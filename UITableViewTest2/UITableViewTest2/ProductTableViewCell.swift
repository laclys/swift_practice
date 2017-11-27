//
//  ProductTableViewCell.swift
//  UITableViewTest2
//
//  Created by lac on 2017/11/27.
//  Copyright © 2017年 lac. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var proTitle: UILabel!
    @IBOutlet weak var proDetail: UILabel!
    @IBOutlet weak var price: UILabel!
}
