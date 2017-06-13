//
//  ViewController.swift
//  Temperature
//
//  Created by Filippo Valle on 11/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var GetTempButton: NSButton!
   
    @IBOutlet weak var CPUTempLabel: NSTextField!

    @IBOutlet weak var BatteryTempLabel: NSTextField!
    
    @IBOutlet weak var HDTempLabel: NSTextField!
    
    func updateAllValues(){
        let manager=TemperatureManager()
        CPUTempLabel.stringValue=String(manager.getCPUTemp())+"°C"
        BatteryTempLabel.stringValue=String(manager.getBatteryTemp())+"°C"
        HDTempLabel.stringValue=String(manager.getHDTemp())+"°C"
    }
    
    @IBAction func UpdateButtonPushed(_ sender: Any) {
        updateAllValues()
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title="Temperature monitor"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        updateAllValues()   //Your API method call
    }


}

