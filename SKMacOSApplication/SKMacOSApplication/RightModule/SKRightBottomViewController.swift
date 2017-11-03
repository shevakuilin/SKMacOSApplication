//
//  SKRightBottomViewController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/11/1.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKRightBottomViewController: NSViewController {

    @IBOutlet weak var inputScrollView: NSScrollView!
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
        inputTextView.delegate = self
        inputTextView.isAutomaticQuoteSubstitutionEnabled = false   // 关闭英文引号自动替换为中文引号
        inputScrollView.hasVerticalScroller = false                 // 关闭scrollView滚动条显示
    }
    
}

// MARK: Delegate
extension SKRightBottomViewController: NSTextViewDelegate {
    
    // MARK: 监听键盘按键
    func textView(_ textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        if commandSelector.description == "insertNewline:" {
            print("输入完成，正在发送内容...")
            textView.string = ""
            return true
        }
        return false // 返回false系统自行处理，返回true系统不做处理
    }
    
    // MARK: 监听输入变化
    func textViewDidChangeSelection(_ notification: Notification) {
        let textView:NSTextView = notification.object as! NSTextView
        let textContenHeight:CGFloat = textView.frame.size.height
        if textContenHeight > self.inputScrollView.contentSize.height {
            inputScrollView.hasVerticalScroller = true
        } else {
            inputScrollView.hasVerticalScroller = false
        }
    }
}

