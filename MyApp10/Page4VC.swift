//
//  Page4VC.swift
//  MyApp10
//
//  Created by user22 on 2017/9/21.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page4VC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var items = ["item1","item2","item3","item4","item5",
                 "item6","item7","item8","item9","item10"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        cell.imageView?.image = UIImage(named: "apple")
        
        return cell
        
    }
    
    // 設定是否可以搬移
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 設定編輯模式
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle{
        return .none
    }
    
    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath){
        
        // 此處進行陣列交換
        let moveString = items.remove(at: sourceIndexPath.row)
        items.insert(moveString, at: destinationIndexPath.row)
        
        print(items)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.isEditing = true
    }
    


}
