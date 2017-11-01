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
        
        NSColor.gray.set()
        NSBezierPath.defaultLineWidth = 0.5
        NSBezierPath.strokeLine(from: NSPoint(x: 0, y: 0), to: NSPoint(x: self.frame.size.width, y: 0))
        
        // or:
        //        let path = NSBezierPath()
        //        path.lineWidth = 0.5
        //        path.move(to: NSPoint(x: 0, y: 0))
        //        path.line(to: NSPoint(x: self.frame.size.width, y: 0))
        //        NSColor.gray.set()
        //        path.stroke()
    }
    
}
