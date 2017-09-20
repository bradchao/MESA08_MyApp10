//
//  Page3VC.swift
//  MyApp10
//
//  Created by user22 on 2017/9/20.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page3VC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var items = ["item 1","item 2","item 3","item 4",]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Page3TableViewCell  // UITableViewCell
        
        cell.img.image = UIImage(named: "apple")
        cell.mylabel.text = items[indexPath.row]
        if indexPath.row % 2 == 0 {
            cell.myswitch.isOn = true
        }else{
            cell.myswitch.isOn = false
        }
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
