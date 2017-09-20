//
//  Page3TableViewCell.swift
//  MyApp10
//
//  Created by user22 on 2017/9/20.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page3TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var myswitch: UISwitch!
    
    
    @IBOutlet weak var mylabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
