//
//  SKMessageCell.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKMessageCell: NSView {

    @IBOutlet weak var headImageView: NSImageView!
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        self.headImageView.wantsLayer = true // 为视图启用图层，即允许NSImageView切割圆角
        self.headImageView.layer?.masksToBounds = true
        self.headImageView.layer?.cornerRadius = 2
    }
    
}
