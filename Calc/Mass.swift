//
//  Mass.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-03.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Mass {
    
    fileprivate var _mass:String
    
    var mass:String {
        
        get {
            
            return _mass
        }
    }
    
    init(mass:String) {
        
        self._mass = mass
        
    }
    
    
    //mg CONVERSIONS
    func mgToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mgToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000000001
        
        let conversion = Double(round(1000000000*conversionTemp)/1000000000)
        
        return "\(conversion)"
        
    }

    func mgToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000035274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0000022046
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00000015747
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    
    //g CONVERSIONS
    func gToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.035274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00220462
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000157473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //kg CONVERSIONS
    func kgToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 35.274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 2.20462
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.157473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //t CONVERSIONS
    func tToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 35274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 2204.62
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 157.473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //oz CONVERSIONS
    func ozToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 28.3495
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0283495
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00002835
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 28349.5
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00446429
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //lbs CONVERSIONS
    func lbsToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 453.592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 16
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToSConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0714286
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //s CONVERSIONS
    func sToGConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6350.29
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToKgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6.35029
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToTConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00635029
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToOzConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 224
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToLbsConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 14
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToMgConvert(_ mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6350000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    
}
