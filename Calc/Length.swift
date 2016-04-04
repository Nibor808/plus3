//
//  Length.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-01.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Length {
    
    private var _len:String
    
    var len:String {
        
        get {
            
            return _len
        }
        
    }
    
    init(len:String) {
    
        self._len = len
    
    }
    
    
    //mm CONVERSIONS
    func mmToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000001
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    func mmToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0393701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0032808399
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00109361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00000062
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    
    //cm CONVERSIONS
    func cmToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 10
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.01
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00001
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    func cmToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.393701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0328084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0109361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func cmToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000062
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }


    //m CONVERSION
    func mToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 100
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 39.3701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 3.28084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1.09361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000621371
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //km CONVERSIONS
    func kmToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 100000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 39370.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 3280.84
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1093.61
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.621371
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //in CONVERSIONS
    func inToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 25.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 2.54
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0254
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000254
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0833333
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0277778
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000015783
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ft CONVERSIONS
    func ftToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 304.8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 30.84
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.3048
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0003048
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 12
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.333333
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00018939375
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //yd CONVERSIONS
    func ydToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 914.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 91.44
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.9144
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0009144
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 36
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 3
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToMlConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000568182
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ml CONVERSIONS
    func mlToMmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1609000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToCmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 160934
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToMConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1609.34
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToKmConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1.60934
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToInConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 63360
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToFtConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 5280
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToYdConvert(len:String) -> String {
        
        let conversionTemp = Double(len)! * 1760
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    
}