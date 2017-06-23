//
//  UpdateViewController.swift
//  Temperature
//
//  Created by Filippo Valle on 23/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Foundation
import Cocoa

class UpdateViewController:NSViewController{
    
    let currentVersionString="1.0.2"
    
    @IBOutlet weak var currentArea: NSTextField!
    @IBOutlet weak var newestArea: NSTextField!

    
    @IBAction func UpdateButtunPushed(_ sender: Any) {
        
        currentArea.stringValue="You are using:"+currentVersionString
        let manager=ApiManager(url:"https://warm-earth-14163.herokuapp.com/")
        manager.Call(method:"Temperature_version.php?key=xenoncursedavitindiesyb")
        manager.FillNSTextFieldWithKey(key: "version", field: newestArea)
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title="MacOs Temperature"
        self.view.window!.backgroundColor=NSColor.blue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
