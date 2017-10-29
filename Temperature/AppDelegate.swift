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
    
    func UpdateValue() -> Void {
        let tempManager=TemperatureManager()
        statusBarItem!.title = tempManager.GetCPUTempString()
    }
    
    override func awakeFromNib() {
        let statusBar = NSStatusBar.system()
        statusBarItem = statusBar.statusItem(withLength: CGFloat(NSVariableStatusItemLength))
        statusBarItem!.menu = statusMenu
        self.UpdateValue()
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.UpdateValue), userInfo: nil, repeats: true)
        
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
//    func goToDownload(){
//        open("google.it")
//    }
    
}

