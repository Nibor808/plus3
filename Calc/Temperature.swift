//
//  Temperature.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-01.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Temperature {
    
    
    private var _temp:String
    
    var temp:String {
        
        get {
            
            return self._temp
        }
    }
    
    init(temp:String) {
        
        self._temp = temp
    }
    
    func celToFarConvert(temp:String) -> String {
        
        let conversionTemp = ((Double(temp)! * 9) / 5) + 32
        
        let conversion = Double(round(100*conversionTemp)/100)
        
        return "\(conversion)"
        
    }
    
    func farToCelConvert(temp:String) -> String {
        
        let conversionTemp = ((Double(temp)! - 32) * 5) / 9
        
        let conversion = Double(round(100*conversionTemp)/100)
        
        return "\(conversion)"
    }

    
}