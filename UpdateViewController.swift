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
    
    let currentVersionString="2.1.0"
    
    @IBOutlet weak var currentArea: NSTextField!
    @IBOutlet weak var newestArea: NSTextField!

    
    
    @IBAction func UpdateButtunPushed(_ sender: Any) {
        UpdateVersions()
    }
    
    func UpdateVersions()->Void{
        currentArea.stringValue="You are using:"+currentVersionString
        let manager=ApiManager(url:"https://filippov-hko4rv9s2jb-apigcp.nimbella.io/api/macosTemperature/getLatestVersion")
        manager.Call(method:"")
        
        let semaphore = DispatchSemaphore(value: 0);

        manager.FillNSTextFieldWithKey(key: "version", semaphore: semaphore)
        
        _ = semaphore.wait(timeout: .distantFuture)
        
        UpdateLatestString(newVersion: manager.GetLastCallData())    }
    
    func UpdateLatestString(newVersion: String){
        newestArea.stringValue = "Version "+newVersion+" is available"
    }
    
    @IBAction func DownloadButtonPushed(_ sender: Any) {
        if let url = URL(string: "https://sourceforge.net/projects/macos-temperature/files/latest/download") {
                let dataFromURL = try? Data(contentsOf: url)
            let fileManager = FileManager.default
            fileManager.createFile(atPath: "~/Downloads", contents: dataFromURL, attributes: nil)
        }
    }
    
    func setStyle(){
        self.view.window!.title="MacOS Temperature"
        self.view.window!.backgroundColor=NSColor.blue
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        setStyle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateVersions()
    }
    
    override var representedObject: Any? {
        didSet {
            setStyle()
        }
    }
    
}
