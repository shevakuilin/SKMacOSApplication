//
//  SKRightBottomViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKRightBottomViewController: NSViewController {

    @IBOutlet var inputTextView: NSTextView!    // 输入框
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        setInputTextView()
    }
    
    private func setInputTextView() {
        inputTextView.backgroundColor = NSColor(red: 243/255.0, green: 243/255.0, blue: 243/255.0, alpha: 1.0)
        inputTextView.font = NSFont.systemFont(ofSize: 14)
        let paragraphStyle:NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4.0
        inputTextView.defaultParagraphStyle = paragraphStyle
        
    }
}
