//
//  Page4VC.swift
//  MyApp10
//
//  Created by user22 on 2017/9/21.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page4VC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var items = ["item1","item1","item1","item1","item1",
                 "item1","item1","item1","item1","item1"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath)
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
