//
//  Volume.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-02.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation


class Volume {
    
    private var _vol:String
    
    
    var vol:String {
        
        get {
            
            return _vol
        }
        
    }
    
    init(vol:String) {
        
        self._vol = vol
    }
    
    
    //ml CONVERSIONS
    func mlToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func mlToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0610237
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000035315
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0351951
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00175975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000219969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.033814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00211338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func mlToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000264172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //m3 CONVERSION
    func m3ToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func m3ToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 10
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 61023.7
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35.3147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35195.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1759.75
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 219.969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 33814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 2113.38
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    func m3ToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 264.172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    
    //l CONVERSIONS
    func lToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.001
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.01
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 61.0237
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0353147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 35.1951
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.75975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.219969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 33.814
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 2.11338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func lToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.264172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //hecL CONVERSIONS
    func hecLToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.1
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 100
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 100000
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6102.37
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3.53147
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3519.51
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 175.975
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 21.9969
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3381.4
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 211.338
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func hecLToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 26.4172
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //in3 CONVERSIONS
    func in3ToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000016387
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0163871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000163871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16.3871
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000578704
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.576744
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0288372
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00360465
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.554113
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.034632
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func in3ToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.004329
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ft3 CONVERSIONS
    func ft3ToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0283168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.3168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.283168
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28316.8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1728
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 996.614
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 49.8307
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6.22884
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 957.506
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 59.8442
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ft3ToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 7.48052
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //floz CONVERSIONS
    func flozToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000028413
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0284131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000284131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.4131
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.73387
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0010034
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.05
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.96076
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0600475
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00750594
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }


    //pt CONVERSIONS
    func ptToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00568261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 568.261
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 34.6774
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 20
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.020068
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 19.2152
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.20095
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.150119
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }

    
    //gal CONVERSIONS
    func galToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00454609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 4.54609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0454609
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 4546.09
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 277.419
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 160
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.160544
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 153.722
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 9.6076
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.20095
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //flozUS CONVERSIONS
    func flozUSToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000029574
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0295735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000295735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 29.5735
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.80469
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 1.04084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00104438
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00650527
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0520421
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0625
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func flozUSToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0078125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //ptUS CONVERSIONS
    func ptUSToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.000473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00473176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 473.176
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 28.875
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16.6535
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0167101
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.104084
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.832674
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 16
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func ptUSToGalUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.125
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    
    //galUS CONVERSIONS
    func galUSToM3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.00378541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3.78541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToHecLConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.0378541
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToMlConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 3785.41
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToIn3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 231
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFlOzConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 133.228
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFt3Convert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.133681
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToGalConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 0.832674
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToPtConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 6.66139
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToPtUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 8
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }
    
    func galUSToFlOzUSConvert(vol:String) -> String {
        
        let conversionTemp = Double(vol)! * 128
        
        let conversion = Double(round(1000000*conversionTemp)/1000000)
        
        return "\(conversion)"
        
    }




    
}