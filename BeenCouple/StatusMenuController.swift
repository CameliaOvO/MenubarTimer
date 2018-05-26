//
//  StatusMenuController.swift
//  BeenCouple
//
//  Created by Camelia Park on 2018. 5. 26..
//  Copyright © 2018년 Camelia Park. All rights reserved.
//

import Cocoa

extension NSImage.Name {
    static let status = NSImage.Name("statusIcon")
}

class StatusMenuController: NSObject {

    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let dateCalculator = DateCalculator()
    
    
    override func awakeFromNib() {

        
//        let icon = NSImage(named: .status)
//        icon?.isTemplate = true
//        statusItem.image = icon
        statusItem.title = "💕 D+" + String(dateCalculator.calculate(startDate: "2017-09-16"))
        statusItem.menu = statusMenu
        
        let myTimer = Timer(timeInterval: 1, target: self, selector: #selector(updateTitle), userInfo: nil, repeats: true)
        RunLoop.current.add(myTimer, forMode: RunLoopMode.commonModes)
        
    }
    
    @objc func updateTitle() {
        statusItem.title = "💕 D+" + String(dateCalculator.calculate(startDate: "2017-09-16"))
    }
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
