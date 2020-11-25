//
//  LicenseWindow.swift
//  Temperature
//
//  Created by Filippo Valle on 22/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Foundation
import Cocoa

class LicenseWindowController: NSViewController {

    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title="GPL License"
        self.view.window!.backgroundColor=NSColor.systemGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
