//
//  Area.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-01.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation

class Area {
    
    private var _area:String
    
    
    var area:String {
        
        get {
            
            return _area
        }
        
    }
    
    
    init(area:String) {
        
        self._area = area
        
    }
    
    
    //m2 CONVERSIONS
    func m2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.0001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m2ToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m2ToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1550
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m2ToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 10.7639
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m2ToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1.19599
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000247105
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m2ToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.0000003861
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    
    //hec CONVERSIONS
    func hecToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.01
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 15500000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 107639
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 11959.9
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 2.47105
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00386102
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //km2 CONVERSIONS
    func km2ToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 100
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1550000000
        
        let conversion = Double(round(100000000000*conversionTemp)/100000000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 10760000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1196000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 247.105
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func km2ToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.386102
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //in2 CONVERSIONS
    func in2ToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00064516
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000000064516
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00000000064516
        
        let conversion = Double(round(1000000000*conversionTemp)/1000000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00694444
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000771605
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00000015942
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in2ToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.0000000002491
        
        let conversion = Double(round(100000000000*conversionTemp)/100000000000)
        
        return "\(conversion)"
        
    }
    
    
    //ft2 CONVERSIONS
    func ft2ToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.092903
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.0000092903
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000000092903
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 144
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.111111
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000022957
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft2ToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00000003587
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //yd2 CONVERSIONS
    func yd2ToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.836127
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000083613
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00000083613
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 1296
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 9
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.000206612
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func yd2ToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00000032283
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //acr CONVERSIONS
    func acrToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 4046.86
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.404686
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.00404686
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 6273000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 43560
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 4840
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func acrToMl2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 0.0015625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ml2 CONVERSIONS
    func ml2ToM2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 2590000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToHecConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 258.999
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToKm2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 2.58999
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToIn2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 4014000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToFt2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 27880000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToYd2Convert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 3098000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ml2ToAcrConvert(area:String) -> String {
        
        let conversionTemp = Double(area)! * 640
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
}