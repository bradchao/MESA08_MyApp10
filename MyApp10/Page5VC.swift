//
//  Page5VC.swift
//  MyApp10
//
//  Created by user22 on 2017/9/21.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page5VC: UIViewController {
    @IBOutlet weak var rand: UILabel!

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        print("back")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rand.text = String(arc4random_uniform(49)+1)
    }
}
