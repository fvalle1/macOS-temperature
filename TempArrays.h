//
//  TempArrays.h
//  Temperature
//
//  Created by Filippo Valle on 11/06/17.
//  Copyright © 2017 Filippo Valle. All rights reserved.
//

#ifndef TempArrays_h
#define TempArrays_h
const char* TEMPS[][2] = {
    {"TA0P", "Ambient temperature"},
    {"TA0p", "Ambient temperature"},
    {"TA1P", "Ambient temperature"},
    {"TA1p", "Ambient temperature"},
    {"TA0S", "PCI Slot 1 Pos 1"},
    {"TA1S", "PCI Slot 1 Pos 2"},
    {"TA2S", "PCI Slot 2 Pos 1"},
    {"TA3S", "PCI Slot 2 Pos 2"},
    {"Tb0P", "BLC Proximity"},
    {"TB0T", "Battery TS_MAX"},
    {"TB1T", "Battery 1"},
    {"TB2T", "Battery 2"},
    {"TB3T", "Battery 3"},
    {"TC0C", "CPU 0 Core"},
    {"TC0D", "CPU 0 Die"},
    {"TCXC", "PECI CPU"},
    {"TCXc", "PECI CPU"},
    {"TC0E", "CPU 0"},
    {"TC0F", "CPU 0"},
    {"TC0G", "CPU 0 ????"},
    {"TC0H", "CPU 0 Heatsink"},
    {"TC0J", "CPU 0 ??"},
    {"TC0P", "CPU 0 Proximity"},
    {"TC0c", ""},
    {"TC0d", ""},
    {"TC0p", ""},
    {"TC1C", "Core 1"},
    {"TC1c", ""},
    {"TC2C", "Core 2"},
    {"TC2c", ""},
    {"TC3C", "Core 3"},
    {"TC3c", ""},
    {"TC4C", "Core 4"},
    {"TC5C", "Core 5"},
    {"TC6C", "Core 6"},
    {"TC7C", "Core 7"},
    {"TC8C", "Core 8"},
    {"TCGC", "PECI GPU"},
    {"TCGc", "PECI GPU"},
    {"TCPG", ""},
    {"TCSC", "PECI SA"},
    {"TCSc", "PECI SA"},
    {"TCSA", "PECI SA"},
    {"TG0H", "GPU 0 Heatsink"},
    {"TG0P", "GPU 0 Proximity"},
    {"TG0D", "GPU 0 Die"},
    {"TG1D", "GPU 1 Die"},
    {"TG1H", "GPU 1 Heatsink"},
    {"TH0P", "Harddisk 0 Proximity"},
    {"Th1H", "NB/CPU/GPU HeatPipe 1 Proximity"},
    {"TL0P", "LCD Proximity"},
    {"TM0P", "Memory Slot Proximity"},
    {"TM0S", "Memory Slot 1"},
    {"Tm0p", "Misc (clock chip) Proximity"},
    {"TO0P", "Optical Drive Proximity"},
    {"Tp0P", "PowerSupply Proximity"},
    {"TPCD", "Platform Controller Hub Die"},
    {"TS0C", "Expansion slots"},
    {"Ts0P", "Palm rest L"},
    {"Ts0S", "Memory Bank Proximity"},
    {"Ts1p", "Palm rest R"},
    {"TW0P", "AirPort Proximity"},
};

const char* TEMPS_SHORT[][2] = {
    {"TC0E", "CPU 0"},
    {"TC0F", "CPU 0"},
    {"TG0P", "GPU 0 Proximity"},
    {"TG0D", "GPU 0 Die"},
};

#endif /* TempArrays_h */
