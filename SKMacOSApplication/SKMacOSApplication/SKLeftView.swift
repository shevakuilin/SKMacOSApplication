//
//  SKLeftView.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/30.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKLeftView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let backgroundColor:NSColor = NSColor.black
        backgroundColor.set()
        NSBezierPath.fill(bounds)
        // Drawing code here.
    }
    
}
