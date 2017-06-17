//
//  AppDelegate.swift
//  Temperature
//
//  Created by Filippo Valle on 11/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var statusMenu: NSMenu!
    var statusBarItem : NSStatusItem?
    
    
    override func awakeFromNib() {
        let statusBar = NSStatusBar.system()
        statusBarItem = statusBar.statusItem(withLength: CGFloat(NSVariableStatusItemLength))
        statusBarItem!.menu = statusMenu
        statusBarItem!.title = "Temp:"
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

