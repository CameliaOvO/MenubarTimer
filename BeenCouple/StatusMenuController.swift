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

    override func awakeFromNib() {
        let icon = NSImage(named: .status)
        icon?.isTemplate = true
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
