//
//  Currency.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-10.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation
import Alamofire

class Currency {
    
    private var _currencyUrl:String!
    private var _name:String!
    private var _data:Dictionary<String,AnyObject>!
    var aedConvertFactor:Double!
    var angConvertFactor:Double!
    var arsConvertFactor:Double!
    var audConvertFactor:Double!
    var bbdConvertFactor:Double!
    var bdtConvertFactor:Double!
    var bmdConvertFactor:Double!
    var brlConvertFactor:Double!
    var btcConvertFactor:Double!
    var byrConvertFactor:Double!
    var bzdConvertFactor:Double!
    var cadConvertFactor:Double!
    var chfConvertFactor:Double!
    var cnyConvertFactor:Double!
    var crcConvertFactor:Double!
    var cupConvertFactor:Double!
    var czkConvertFactor:Double!
    var dkkConvertFactor:Double!
    var dopConvertFactor:Double!
    var egpConvertFactor:Double!
    var eurConvertFactor:Double!
    var gbpConvertFactor:Double!
    var hkdConvertFactor:Double!
    var ilsConvertFactor:Double!
    var inrConvertFactor:Double!
    var iqdConvertFactor:Double!
    var irrConvertFactor:Double!
    var iskConvertFactor:Double!
    var jmdConvertFactor:Double!
    var jpyConvertFactor:Double!
    var kesConvertFactor:Double!
    var krwConvertFactor:Double!
    var kwdConvertFactor:Double!
    var kydConvertFactor:Double!
    var kztConvertFactor:Double!
    var lkrConvertFactor:Double!
    var mxnConvertFactor:Double!
    var ngnConvertFactor:Double!
    var nokConvertFactor:Double!
    var nprConvertFactor:Double!
    var nzdConvertFactor:Double!
    var pkrConvertFactor:Double!
    var plnConvertFactor:Double!
    var rubConvertFactor:Double!
    var sarConvertFactor:Double!
    var sekConvertFactor:Double!
    var sgdConvertFactor:Double!
    var thbConvertFactor:Double!
    var tryConvertFactor:Double!
    var ttdConvertFactor:Double!
    var twdConvertFactor:Double!
    var uahConvertFactor:Double!
    var uyuConvertFactor:Double!
    var vefConvertFactor:Double!
    var xagConvertFactor:Double!
    var xauConvertFactor:Double!
    var xcdConvertFactor:Double!
    
    var name:String {
        
        return _name
    }
    
    var data:Dictionary<String,AnyObject> {
        
        return _data
    }
      
    init() {
        
       
    }
    
    func dowloadCurrency(completed: DownloadComplete) {
        
        let url = NSURL(string: URL)!
        
        Alamofire.request(.GET, url).responseJSON {
            
            response in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String,AnyObject> {
                
                if let data = dict["quotes"] {
                    
                    if let x = data["USDAED"] as? Double {
                        
                        self.aedConvertFactor = x
                    }
                    
                    if let x = data["USDANG"] as? Double {
                        
                        self.angConvertFactor = x
                    }
                    
                    if let x = data["USDARS"] as? Double {
                        
                        self.arsConvertFactor = x
                    }
                    
                    if let x = data["USDAUD"] as? Double {
                        
                        self.audConvertFactor = x
                    }
                    
                    if let x = data["USDBBD"] as? Double {
                        
                        self.bbdConvertFactor = x
                    }
                    
                    if let x = data["USDBDT"] as? Double {
                        
                        self.bdtConvertFactor = x
                    }
                    
                    if let x = data["USDBMD"] as? Double {
                        
                        self.bmdConvertFactor = x
                    }
                    
                    if let x = data["USDBRL"] as? Double {
                        
                        self.brlConvertFactor = x
                    }
                    
                    if let x = data["USDBTC"] as? Double {
                        
                        self.btcConvertFactor = x
                    }
                    
                    if let x = data["USDBYR"] as? Double {
                        
                        self.byrConvertFactor = x
                    }
                    
                    if let x = data["USDBZD"] as? Double {
                        
                        self.bzdConvertFactor = x
                    }
                    
                    if let x = data["USDCAD"] as? Double {
                        
                        self.cadConvertFactor = x
                    }
                    
                    if let x = data["USDCHF"] as? Double {
                        
                        self.chfConvertFactor = x
                    }
                    
                    if let x = data["USDCNY"] as? Double {
                        
                        self.cnyConvertFactor = x
                    }
                    
                    if let x = data["USDCRC"] as? Double {
                        
                        self.crcConvertFactor = x
                    }
                    
                    if let x = data["USDCUP"] as? Double {
                        
                        self.cupConvertFactor = x
                    }
                    
                    if let x = data["USDCZK"] as? Double {
                        
                        self.czkConvertFactor = x
                    }
                    
                    if let x = data["USDDKK"] as? Double {
                        
                        self.dkkConvertFactor = x
                    }
                    
                    if let x = data["USDDOP"] as? Double {
                        
                        self.dopConvertFactor = x
                    }
                    
                    if let x = data["USDEGP"] as? Double {
                        
                        self.egpConvertFactor = x
                    }
                    
                    if let x = data["USDEUR"] as? Double {
                        
                        self.eurConvertFactor = x
                    }
                    
                    if let x = data["USDGBP"] as? Double {
                        
                        self.gbpConvertFactor = x
                    }
                    
                    if let x = data["USDHKD"] as? Double {
                        
                        self.hkdConvertFactor = x
                    }
                    
                    if let x = data["USDILS"] as? Double {
                        
                        self.ilsConvertFactor = x
                    }
                    
                    if let x = data["USDINR"] as? Double {
                        
                        self.inrConvertFactor = x
                    }
                    
                    if let x = data["USDIQD"] as? Double {
                        
                        self.iqdConvertFactor = x
                    }
                    
                    if let x = data["USDIRR"] as? Double {
                        
                        self.irrConvertFactor = x
                    }
                    
                    if let x = data["USDISK"] as? Double {
                        
                        self.iskConvertFactor = x
                    }
                    
                    if let x = data["USDJMD"] as? Double {
                        
                        self.jmdConvertFactor = x
                    }
                    
                    if let x = data["USDJPY"] as? Double {
                        
                        self.jpyConvertFactor = x
                    }
                    
                    if let x = data["USDKES"] as? Double {
                        
                        self.kesConvertFactor = x
                    }
                    
                    if let x = data["USDKRW"] as? Double {
                        
                        self.krwConvertFactor = x
                    }
                    
                    if let x = data["USDKWD"] as? Double {
                        
                        self.kwdConvertFactor = x
                    }
                    
                    if let x = data["USDKYD"] as? Double {
                        
                        self.kydConvertFactor = x
                    }
                    
                    if let x = data["USDKZT"] as? Double {
                        
                        self.kztConvertFactor = x
                    }
                    
                    if let x = data["USDLKR"] as? Double {
                        
                        self.lkrConvertFactor = x
                    }
                    
                    if let x = data["USDMXN"] as? Double {
                        
                        self.mxnConvertFactor = x
                    }
                    
                    if let x = data["USDNGN"] as? Double {
                        
                        self.ngnConvertFactor = x
                    }
                    
                    if let x = data["USDNOK"] as? Double {
                        
                        self.nokConvertFactor = x
                    }
                    
                    if let x = data["USDNPR"] as? Double {
                        
                        self.nprConvertFactor = x
                    }
                    
                    if let x = data["USDNZD"] as? Double {
                        
                        self.nzdConvertFactor = x
                    }
                    
                    if let x = data["USDPKR"] as? Double {
                        
                        self.pkrConvertFactor = x
                    }
                    
                    if let x = data["USDPLN"] as? Double {
                        
                        self.plnConvertFactor = x
                    }
                    
                    if let x = data["USDRUB"] as? Double {
                        
                        self.rubConvertFactor = x
                    }
                    
                    if let x = data["USDSAR"] as? Double {
                        
                        self.sarConvertFactor = x
                    }
                    
                    if let x = data["USDSEK"] as? Double {
                        
                        self.sekConvertFactor = x
                    }
                    
                    if let x = data["USDSGD"] as? Double {
                        
                        self.sgdConvertFactor = x
                    }
                    
                    if let x = data["USDTHB"] as? Double {
                        
                        self.thbConvertFactor = x
                    }
                    
                    if let x = data["USDTRY"] as? Double {
                        
                        self.tryConvertFactor = x
                    }
                    
                    if let x = data["USDTTD"] as? Double {
                        
                        self.ttdConvertFactor = x
                    }
                    
                    if let x = data["USDTWD"] as? Double {
                        
                        self.twdConvertFactor = x
                    }
                    
                    if let x = data["USDUAH"] as? Double {
                        
                        self.uahConvertFactor = x
                    }
                    
                    if let x = data["USDUYU"] as? Double {
                        
                        self.uyuConvertFactor = x
                    }
                    
                    if let x = data["USDVEF"] as? Double {
                        
                        self.vefConvertFactor = x
                    }
                    
                    if let x = data["USDXAG"] as? Double {
                        
                        self.xagConvertFactor = x
                    }
                    
                    if let x = data["USDXAU"] as? Double {
                        
                        self.xauConvertFactor = x
                    }
                    
                    if let x = data["USDXCD"] as? Double {
                        
                        self.xcdConvertFactor = x
                    }
                    
                }
                completed()
            }
        }
    }
    
    
        
        func AED(num:Double) -> Double {
            
            let converted = num * aedConvertFactor
            
            return converted
        }
        
        func ANG(num:Double) -> Double {
            
            let converted = num * angConvertFactor
            
            return converted
        }
        
        func ARS(num:Double) -> Double {
            
            let converted = num * arsConvertFactor
            
            return converted
        }

        func AUD(num:Double) -> Double {
            
            let converted = num * audConvertFactor
            
            return converted
        }

        func BBD(num:Double) -> Double {
            
            let converted = num * bbdConvertFactor
            
            return converted
        }
        
        func BDT(num:Double) -> Double {
            
            let converted = num * bdtConvertFactor
            
            return converted
        }
        
        func BMD(num:Double) -> Double {
            
            let converted = num * bmdConvertFactor
            
            return converted
        }
        
        func BRL(num:Double) -> Double {
            
            let converted = num * brlConvertFactor
            
            return converted
        }
        
        func BTC(num:Double) -> Double {
            
            let converted = num * btcConvertFactor
            
            return converted
        }
        
        func BYR(num:Double) -> Double {
            
            let converted = num * byrConvertFactor
            
            return converted
        }
        
        func BZD(num:Double) -> Double {
            
            let converted = num * bzdConvertFactor
            
            return converted
        }
        
        func CAD(num:Double) -> Double {
            
            let converted = num * cadConvertFactor
            
            return converted
        }
        
        func CHF(num:Double) -> Double {
            
            let converted = num * chfConvertFactor
            
            return converted
        }

        func CNY(num:Double) -> Double {
            
            let converted = num * cnyConvertFactor
            
            return converted
        }
        
        func CRC(num:Double) -> Double {
            
            let converted = num * crcConvertFactor
            
            return converted
        }
        
        func CUP(num:Double) -> Double {
            
            let converted = num * cupConvertFactor
            
            return converted
        }
        
        func CZK(num:Double) -> Double {
            
            let converted = num * czkConvertFactor
            
            return converted
        }
        
        func DKK(num:Double) -> Double {
            
            let converted = num * dkkConvertFactor
            
            return converted
        }

        func DOP(num:Double) -> Double {
            
            let converted = num * dopConvertFactor
            
            return converted
        }

        func EGP(num:Double) -> Double {
            
            let converted = num * egpConvertFactor
            
            return converted
        }

        func EUR(num:Double) -> Double {
            
            let converted = num * eurConvertFactor
            
            return converted
        }

        func GBP(num:Double) -> Double {
            
            let converted = num * gbpConvertFactor
            
            return converted
        }
        
        func HKD(num:Double) -> Double {
            
            let converted = num * hkdConvertFactor
            
            return converted
        }
        
        func ILS(num:Double) -> Double {
            
            let converted = num * ilsConvertFactor
            
            return converted
        }
        
        func INR(num:Double) -> Double {
            
            let converted = num * inrConvertFactor
            
            return converted
        }
        
        func IQD(num:Double) -> Double {
            
            let converted = num * iqdConvertFactor
            
            return converted
        }
        
        func IRR(num:Double) -> Double {
            
            let converted = num * irrConvertFactor
            
            return converted
        }
        
        func ISK(num:Double) -> Double {
            
            let converted = num * iskConvertFactor
            
            return converted
        }
        
        func JMD(num:Double) -> Double {
            
            let converted = num * jmdConvertFactor
            
            return converted
        }
        
        func JPY(num:Double) -> Double {
            
            let converted = num * jpyConvertFactor
            
            return converted
        }
        
        func KES(num:Double) -> Double {
            
            let converted = num * kesConvertFactor
            
            return converted
        }
        
        func KRW(num:Double) -> Double {
            
            let converted = num * krwConvertFactor
            
            return converted
        }

        func KWD(num:Double) -> Double {
            
            let converted = num * kwdConvertFactor
            
            return converted
        }

        func KYD(num:Double) -> Double {
            
            let converted = num * kydConvertFactor
            
            return converted
        }
        
        func KZT(num:Double) -> Double {
            
            let converted = num * kztConvertFactor
            
            return converted
        }
        
        func LKR(num:Double) -> Double {
            
            let converted = num * lkrConvertFactor
            
            return converted
        }
        
        func MXN(num:Double) -> Double {
            
            let converted = num * mxnConvertFactor
            
            return converted
        }
        
        func NGN(num:Double) -> Double {
            
            let converted = num * ngnConvertFactor
            
            return converted
        }
        
        func NOK(num:Double) -> Double {
            
            let converted = num * nokConvertFactor
            
            return converted
        }

        func NPR(num:Double) -> Double {
            
            let converted = num * nprConvertFactor
            
            return converted
        }
        
        func NZD(num:Double) -> Double {
            
            let converted = num * nzdConvertFactor
            
            return converted
        }
        
        func PKR(num:Double) -> Double {
            
            let converted = num * pkrConvertFactor
            
            return converted
        }
        
        func PLN(num:Double) -> Double {
            
            let converted = num * plnConvertFactor
            
            return converted
        }

        func RUB(num:Double) -> Double {
            
            let converted = num * rubConvertFactor
            
            return converted
        }

        func SAR(num:Double) -> Double {
            
            let converted = num * sarConvertFactor
            
            return converted
        }
        
        func SEK(num:Double) -> Double {
            
            let converted = num * sekConvertFactor
            
            return converted
        }

        func SGD(num:Double) -> Double {
            
            let converted = num * sgdConvertFactor
            
            return converted
        }
        
        func THB(num:Double) -> Double {
            
            let converted = num * thbConvertFactor
            
            return converted
        }
        
        func TRY(num:Double) -> Double {
            
            let converted = num * tryConvertFactor
            
            return converted
        }
        
        func TTD(num:Double) -> Double {
            
            let converted = num * ttdConvertFactor
            
            return converted
        }
        
        func TWD(num:Double) -> Double {
            
            let converted = num * twdConvertFactor
            
            return converted
        }
        
        func UAH(num:Double) -> Double {
            
            let converted = num * uahConvertFactor
            
            return converted
        }
        
        func UYU(num:Double) -> Double {
            
            let converted = num * uyuConvertFactor
            
            return converted
        }
        
        func VEF(num:Double) -> Double {
            
            let converted = num * vefConvertFactor
            
            return converted
        }
        
        func XAG(num:Double) -> Double {
            
            let converted = num * xagConvertFactor
            
            return converted
        }
        
        func XAU(num:Double) -> Double {
            
            let converted = num * xauConvertFactor
            
            return converted
        }
        
        func XCD(num:Double) -> Double {
            
            let converted = num * xcdConvertFactor
            
            return converted
        }
    }




