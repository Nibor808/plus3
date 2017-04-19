//
//  Volume.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-02.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation


class Volume {
    
    fileprivate var _vol:String
    
    
    var vol:String {
        
        get {
            
            return _vol
        }
        
    }
    
    init(vol:String) {
        
        self._vol = vol
    }
    
    
    //ml CONVERSIONS
    func mlToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0610237
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000035315
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0351951
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00175975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000219969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.033814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00211338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000264172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //m3 CONVERSION
    func m3ToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m3ToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 10
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 61023.7
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35.3147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35195.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1759.75
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 219.969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 33814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 2113.38
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 264.172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    
    //l CONVERSIONS
    func lToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.01
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 61.0237
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0353147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35.1951
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.75975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.219969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 33.814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 2.11338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.264172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //hecL CONVERSIONS
    func hecLToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 100
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 100000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6102.37
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3.53147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3519.51
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 175.975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 21.9969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3381.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 211.338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 26.4172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //in3 CONVERSIONS
    func in3ToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000016387
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0163871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000163871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16.3871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000578704
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.576744
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0288372
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00360465
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.554113
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.034632
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.004329
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ft3 CONVERSIONS
    func ft3ToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0283168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.3168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.283168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28316.8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1728
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 996.614
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 49.8307
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6.22884
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 957.506
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 59.8442
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 7.48052
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //floz CONVERSIONS
    func flozToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000028413
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0284131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000284131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.4131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.73387
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0010034
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.05
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.96076
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0600475
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00750594
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //pt CONVERSIONS
    func ptToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 568.261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 34.6774
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 20
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.020068
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 19.2152
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.20095
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.150119
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //gal CONVERSIONS
    func galToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00454609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 4.54609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0454609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 4546.09
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 277.419
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 160
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.160544
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 153.722
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 9.6076
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.20095
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //flozUS CONVERSIONS
    func flozUSToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000029574
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0295735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000295735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 29.5735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.80469
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.04084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00104438
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00650527
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0520421
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0078125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ptUS CONVERSIONS
    func ptUSToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 473.176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.875
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16.6535
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0167101
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.104084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.832674
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToGalUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //galUS CONVERSIONS
    func galUSToM3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00378541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3.78541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToHecLConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0378541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToMlConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3785.41
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToIn3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 231
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFlOzConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 133.228
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFt3Convert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.133681
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToGalConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.832674
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToPtConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6.66139
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToPtUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFlOzUSConvert(_ vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 128
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }




    
}
