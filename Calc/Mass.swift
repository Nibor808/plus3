//
//  Mass.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-03.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Mass {
    
    private var _mass:String
    
    var mass:String {
        
        get {
            
            return _mass
        }
    }
    
    init(mass:String) {
        
        self._mass = mass
        
    }
    
    
    //mg CONVERSIONS
    func mgToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mgToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000000001
        
        let conversion = Double(round(1000000000*conversionTemp)/1000000000)
        
        return "\(conversion)"
        
    }

    func mgToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000035274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0000022046
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mgToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00000015747
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    
    //g CONVERSIONS
    func gToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.035274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00220462
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func gToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000157473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //kg CONVERSIONS
    func kgToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 35.274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 2.20462
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func kgToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.157473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //t CONVERSIONS
    func tToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 1000000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 35274
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 2204.62
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func tToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 157.473
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //oz CONVERSIONS
    func ozToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 28.3495
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0283495
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00002835
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 28349.5
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ozToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00446429
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //lbs CONVERSIONS
    func lbsToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 453.592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.000453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 16
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 453592
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lbsToSConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.0714286
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //s CONVERSIONS
    func sToGConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6350.29
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToKgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6.35029
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToTConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 0.00635029
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToOzConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 224
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToLbsConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 14
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func sToMgConvert(mass:String) -> String {
        
        let conversionTemp = Double(mass)! * 6350000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    
}