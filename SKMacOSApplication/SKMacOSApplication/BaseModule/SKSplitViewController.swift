//
//  SKSplitViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/31.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKSplitViewController: NSSplitViewController {

    class func loadFromNib() -> SKSplitViewController {
        let stroyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        return stroyboard.instantiateController(withIdentifier :NSStoryboard.SceneIdentifier(rawValue: "SKSplitViewController")) as! SKSplitViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
}
