//
//  SKRightNavigationView.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKRightNavigationView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let backgroundColor:NSColor = NSColor.white
        backgroundColor.set()
        NSBezierPath.fill(bounds)
    }
    
}
