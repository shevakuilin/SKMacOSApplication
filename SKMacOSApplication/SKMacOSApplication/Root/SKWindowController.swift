//
//  SKWindowController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/30.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        window?.titleVisibility = .hidden // 使window上的toolBar可以与关闭放大缩小按钮平行
        window?.titlebarAppearsTransparent = true
    }

}
