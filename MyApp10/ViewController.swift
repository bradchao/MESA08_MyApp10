//
//  ViewController.swift
//  MyApp10
//
//  Created by user22 on 2017/9/20.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var rand: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var items = ["測試跳頁", "自訂TableViewCell", "UI Part1", "UI Part2", "item11",
                 "item11","item11", "item11", "item11", "item11", "item11",
                 "item11", "item11", "item11", "item11", "item11", "item11"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]  // UILabel
        cell.imageView?.image = UIImage(named: "apple")  // UIImageView
        
        if indexPath.row % 3 == 0 {
            cell.accessoryType = .detailDisclosureButton
        }else {
            cell.accessoryType = .none
        }
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        gotoVC(whereVC: indexPath.row)
    }
    
    func gotoVC(whereVC: Int){
        switch whereVC {
        case 0:
            if let vc2 = storyboard?.instantiateViewController(withIdentifier: "vc2") {
                show(vc2, sender: self)
            }else {
                print("goto vc2 fail")
            }
        case 1:
            if let vc3 = storyboard?.instantiateViewController(withIdentifier: "vc3") {
                show(vc3, sender: self)
            }else{
                print("goto vc3 fail")
                
            }
        default:
            print("XX")
        }
    }
    
    public func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    public func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    
//    public func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
//        return .none
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rand.text = String(arc4random_uniform(49) + 1)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
//        tableView.isEditing = false
    }

}

