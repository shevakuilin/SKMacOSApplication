//
//  SKLetfViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/31.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKLetfViewController: NSViewController {

    @IBOutlet weak var searchTextField: NSSearchField!  // 搜索
    @IBOutlet weak var addFriendButton: NSButton!       // 添加
    
    @IBOutlet weak var headImageView: NSImageView!      // 头像
    @IBOutlet weak var messageButton: NSButton!         // 消息
    @IBOutlet weak var friendsButton: NSButton!         // 好友
    @IBOutlet weak var collectionButton: NSButton!      // 收藏
    @IBOutlet weak var auxiliaryButton: NSButton!       // 辅助功能
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawMask()
        fillDefaultData()
        setAction()
    }
    
    // MARK: 绘制
    private func drawMask() {
        headImageView.wantsLayer = true // 为视图启用图层，即允许NSImageView切割圆角
        headImageView.layer?.masksToBounds = true
        headImageView.layer?.cornerRadius = 2
    }
    
    // MARK: 填充数据
    private func fillDefaultData() {
        headImageView.image = NSImage(named: NSImage.Name(rawValue: "myHeadImage"))
        
        messageButton.image = NSImage(named: NSImage.Name(rawValue: "Tabbar-Chat"))                     // 未选中状态显示的图片
        messageButton.alternateImage = NSImage(named: NSImage.Name(rawValue: "Tabbar-Chat-Selected"))   // 选中状态显示的图片
        friendsButton.image = NSImage(named: NSImage.Name(rawValue: "Tabbar-Contacts"))
        friendsButton.alternateImage = NSImage(named: NSImage.Name(rawValue: "Tabbar-Contacts-Selected"))
        collectionButton.image = NSImage(named: NSImage.Name(rawValue: "Tabbar-Favorites"))
        collectionButton.alternateImage = NSImage(named: NSImage.Name(rawValue: "Tabbar-Favorites-Selected"))
        auxiliaryButton.image = NSImage(named: NSImage.Name(rawValue: "Tabbar-Preferences-HI"))
    }
    
    // MARK: 设置动作
    private func setAction() {
        messageButton.action = #selector(clickMessageBtn(_:))
        friendsButton.action = #selector(clickFriendsBtn(_:))
        collectionButton.action = #selector(clickCollectionBtn(_:))
        auxiliaryButton.action = #selector(auxiliaryBtn(_:))
    }
    
    @objc private func clickMessageBtn(_ sender: NSButton) {
        
    }
    
    @objc private func clickFriendsBtn(_ sender: NSButton) {
    }
    
    @objc private func clickCollectionBtn(_ sender: NSButton) {
    }
    
    @objc private func auxiliaryBtn(_ sender: NSButton) {
    }
}
