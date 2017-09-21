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
    
    // 設定是否可以搬移 ==> 不實作implement的話, 預設是可以 move(true)
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    // 處理刪除或是新增
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        //print("do something")
        
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }else if editingStyle == .insert {
            print("insert")
            items += ["item \(items.count+1)"]
            tableView.reloadData()
            
            let i = IndexPath(item: items.count-1, section: 0)
            tableView.scrollToRow(at: i, at: .top, animated: true)
            
        }
    }
    
    public func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "刪除"
    }
    
    // 設定編輯模式
    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle{
        //return .none ==> 使用在  move mode
        //return .delete
        return .insert
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
