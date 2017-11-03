//
//  SKSelfConversationCell.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/3.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKSelfConversationCell: NSView {

    @IBOutlet weak var messageContent: NSTextField!    // 消息内容
    @IBOutlet weak var headImageView: NSButton!        // 头像
    @IBOutlet weak var bubbleView: NSView!             // 气泡框
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let backgroundColor:NSColor = NSColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1.0)
        backgroundColor.set()
        NSBezierPath.fill(bounds)
        
        self.bubbleView.wantsLayer = true   // 开启layer绘制
        self.bubbleView.layer?.backgroundColor = NSColor(red: 133/255.0, green: 211/255.0, blue: 67/255.0, alpha: 1.0).cgColor
        self.headImageView.wantsLayer = true // 为视图启用图层，即允许NSImageView切割圆角
        self.headImageView.layer?.masksToBounds = true
        self.headImageView.layer?.cornerRadius = 2
    }
    
}
