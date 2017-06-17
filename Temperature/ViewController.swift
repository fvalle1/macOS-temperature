//
//  ViewController.swift
//  Temperature
//
//  Copyright (C) 2017  fvalle1
//This program is free software: you can redistribute it and/or modify
//it under the terms of the GNU General Public License as published by
//the Free Software Foundation, either version 3 of the License, or
//(at your option) any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//    
//You should have received a copy of the GNU General Public License
//along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Cocoa


class ViewController: NSViewController {
    var fTimer=Timer()
    let fTimerTime=0.8;
    
    @IBOutlet weak var GetTempButton: NSButton!
   
    @IBOutlet weak var CPUTempLabel: NSTextField!
    @IBOutlet weak var BatteryTempLabel: NSTextField!
    @IBOutlet weak var HDTempLabel: NSTextField!
    
   
    @objc func UpdateAllValues(){
        let manager=TemperatureManager()
        CPUTempLabel.stringValue=manager.GetCPUTempString()
        BatteryTempLabel.stringValue=manager.GetBatteryTempString()
        HDTempLabel.stringValue=manager.GetHDTempString()
    }
    
    @IBAction func UpdateButtonPushed(_ sender: Any) {
        fTimer.invalidate()
        UpdateAllValues()
        fTimer = Timer.scheduledTimer(timeInterval: fTimerTime, target: self, selector: #selector(self.UpdateAllValues), userInfo: nil, repeats: true)
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window!.title="macOS Temperature"
        self.view.window!.backgroundColor=NSColor.cyan
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fTimer = Timer.scheduledTimer(timeInterval: fTimerTime, target: self, selector: #selector(self.UpdateAllValues), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }
    
    

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        UpdateAllValues()   //Your API method call
    }


}

