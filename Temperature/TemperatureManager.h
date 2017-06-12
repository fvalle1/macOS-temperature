//
//  TemperatureManager.h
//  Temperature
//
//  Created by Filippo Valle on 11/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

#ifndef TemperatureManager_h
#define TemperatureManager_h

#import <Foundation/Foundation.h>
#import <string.h>
#import "smc.h"
#import "TempArrays.h"


@interface TemperatureManager:NSObject
{
    
}

-(double) GetTemp;
-(double) GetTemp: (char*) key;
-(double) GetCPUTemp;
-(double) GetBatteryTemp;
-(double) GetHDTemp;



@end

#endif /* TemperatureManager_h */
