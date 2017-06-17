//
//  TemperatureManager.m
//  Temperature
//
//  Created by Filippo Valle on 11/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//


#include "TemperatureDoubleManager.h"

@implementation TemperatureDoubleManager

-(id)init
{
    SMCOpen();
    return self;
}

-(void)dealloc{
    SMCClose();
};

-(double) GetTemp
{
    int max=50;
    double t = -127.;
    for(int i = 0; i < max; i++) {
        t = SMCGetTemperature((char*)TEMPS[i][0]);
        
        if (t <= -127)
            continue;
        printf("got ok for %s",TEMPS[i][1]);
    }
    
    return t;
    
}

-(double) GetTemp: (char*) key{
    double t = -127.;
    t = SMCGetTemperature(key);
    if(t<-127) t=-127;
    return t;
}

-(double) GetCPUTemp{
    double t = -127.;
    t = SMCGetTemperature((char*)TEMPS[22][0]);
    if(t<-127) t=-127;
    return t;
}


-(double) GetBatteryTemp{
    double t = -127.;
    t = SMCGetTemperature((char*)TEMPS[10][0]);
    if(t<-127) t=-127;
    return t;
}

-(double) GetHDTemp{
    double t = -127.;
    t = SMCGetTemperature((char*)TEMPS[48][0]);
    if(t<-127) t=-127;
    return t;
}

/*
 got ok for Battery TS_MAXgot ok for Battery 1got ok for Battery 2got ok for CPU 0 Diegot ok for CPU 0 Proximitygot ok for got ok for Harddisk 0 Proximitygot ok for NB/CPU/GPU HeatPipe 1 Proximity
 */

@end
