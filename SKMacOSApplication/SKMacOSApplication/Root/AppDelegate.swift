//
//  AppDelegate.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/30.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let popover = NSPopover()
//    let menu = NSMenu()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if let button = statusItem.button {
            button.image = NSImage(named: NSImage.Name(rawValue: "myIcon"))
            button.action = #selector(openApplication(sender:))
        }
        
        popover.contentViewController = SKWeatherController.loadFromNib()
//        menu.addItem(withTitle: "关于我们", action: Selector(("doNothting:")), keyEquivalent: "-")
//        menu.addItem(withTitle: "设置", action: Selector(("setting:")), keyEquivalent: ",")
//        menu.addItem(.separator())// 分隔符
//        menu.addItem(withTitle: "退出", action: Selector(("quit:")), keyEquivalent: "Q")
//
//        statusItem.menu = menu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc private func openApplication(sender: NSStatusBarButton) {
        if popover.isShown {
            popover.performClose(sender)
        } else {
            if let button = statusItem.button {
                popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
            }
        }
    }
    
    private func setting(sender: NSStatusBarButton) {
        
    }
    
    private func quit(sender: NSStatusBarButton) {
        
    }
}

