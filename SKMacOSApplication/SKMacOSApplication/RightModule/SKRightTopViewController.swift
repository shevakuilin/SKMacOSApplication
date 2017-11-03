//
//  SKRightTopViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

private let otherConversationCellKey = "Other"

class SKRightTopViewController: NSViewController {


    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        registerCell()
    }
    
    private func setTableView() {
        self.tableView.backgroundColor = NSColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1.0)
        self.tableView.rowHeight = 104
    }
    
    private func registerCell() {
        if let nib:NSNib = NSNib(nibNamed: NSNib.Name(rawValue: "SKOtherConversationCell"), bundle: nil) {
            self.tableView.register(nib, forIdentifier: NSUserInterfaceItemIdentifier(rawValue: otherConversationCellKey))
        }
    }
}

// MARK: DataSource
extension SKRightTopViewController: NSTableViewDataSource {
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 15
    }
}

// MARK: Delegate
extension SKRightTopViewController: NSTableViewDelegate {
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: otherConversationCellKey), owner: nil) as! SKOtherConversationCell
        
        return cell
    }
}
