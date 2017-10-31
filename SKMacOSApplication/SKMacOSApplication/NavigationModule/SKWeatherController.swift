//
//  SKWeatherController.swift
//  SKMacOSApplication
//
//  Created by ShevaKuilin on 2017/10/31.
//  Copyright © 2017年 ShevaKuilin. All rights reserved.
//

import Cocoa

class SKWeatherController: NSViewController {

    class func loadFromNib() -> SKWeatherController {
        let stroyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        return stroyboard.instantiateController(withIdentifier :NSStoryboard.SceneIdentifier(rawValue: "SKWeatherController")) as! SKWeatherController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
}
