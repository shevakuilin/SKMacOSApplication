//
//  SKRightTopViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKRightTopViewController: NSViewController {


    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
    }
    
    private func setTableView() {
        self.tableView.backgroundColor = NSColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1.0)
    }
    
}
