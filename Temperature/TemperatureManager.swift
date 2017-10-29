//
//  TemperatureStringManager.swift
//  Temperature
//
//  Created by Filippo Valle on 17/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

import Foundation

class TemperatureManager: TemperatureDoubleManager {
    
    override init() {
        super.init()
    }
    
    func GetStringToSet(value: Double) -> String {
        var string="Error 😔"
        if(value > -1){
            string=String(format:"%.0f",value)+"°C"
        }
        
        return string
    }
    
    func GetCPUTempString() -> String {
        return GetStringToSet(value: (self.getCPUTemp()))
    }
    
    func GetHDTempString() -> String {
        return GetStringToSet(value: (self.getHDTemp()))
    }

    func GetBatteryTempString() -> String {
        return GetStringToSet(value: (self.getBatteryTemp()))
    }

    
}
