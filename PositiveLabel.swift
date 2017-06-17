//
//  PositiveLabel.swift
//  Temperature
//
//  Created by Filippo Valle on 17/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Foundation
import Cocoa

class PositiveLabel: NSTextField {
    
    func Set(value: Double){
        if(value > -127){
            super.stringValue=String(value)+"°C"
        }else{
            super.stringValue=""
        }
    }
    
}
