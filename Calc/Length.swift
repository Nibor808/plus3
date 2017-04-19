//
//  Length.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-01.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Length {
    
    fileprivate var _len:String
    
    var len:String {
        
        get {
            
            return _len
        }
        
    }
    
    init(len:String) {
    
        self._len = len
    
    }
    
    
    //mm CONVERSIONS
    func mmToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000001
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    func mmToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0393701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0032808399
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00109361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mmToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00000062
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    
    //cm CONVERSIONS
    func cmToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 10
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.01
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00001
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }
    
    func cmToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.393701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0328084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func cmToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0109361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func cmToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000062
        
        let conversion = Double(round(100000000*conversionTemp)/100000000)
        
        return "\(conversion)"
        
    }


    //m CONVERSION
    func mToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 100
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 39.3701
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 3.28084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1.09361
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000621371
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //km CONVERSIONS
    func kmToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 100000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 39370.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 3280.84
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1093.61
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kmToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.621371
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //in CONVERSIONS
    func inToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 25.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 2.54
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0254
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000254
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0833333
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0277778
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func inToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0000015783
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ft CONVERSIONS
    func ftToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 304.8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 30.84
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.3048
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0003048
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 12
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.333333
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ftToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.00018939375
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //yd CONVERSIONS
    func ydToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 914.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 91.44
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.9144
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.0009144
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 36
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 3
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ydToMlConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 0.000568182
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ml CONVERSIONS
    func mlToMmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1609000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToCmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 160934
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToMConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1609.34
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToKmConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1.60934
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToInConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 63360
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToFtConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 5280
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToYdConvert(_ len:String) -> String {
        
        let conversionTemp = Double(len)! * 1760
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    
}
