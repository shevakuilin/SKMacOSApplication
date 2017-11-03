//
//  SKOtherConversationCell.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/3.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKOtherConversationCell: NSView {


    @IBOutlet weak var bubbleView: NSView!  // 气泡框
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let backgroundColor:NSColor = NSColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1.0)
        backgroundColor.set()
        NSBezierPath.fill(bounds)
    }
    
}
