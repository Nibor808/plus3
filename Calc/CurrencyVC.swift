//
//  CurrencyVC.swift
//  Calc
//
//  Created by Robin Erickson on 2016-02-26.
//  Copyright © 2016 Incubo. All rights reserved.
//

import UIKit

class CurrencyVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var usdTxt: UITextField!
    @IBOutlet weak var toTxt: UITextField!
    @IBOutlet weak var toLbl: UILabel!
    @IBOutlet weak var convertBtn: UIButton!
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    var inputArr:NSArray = ["UAE Dirham", "Netherlands Ant. Guilder", "Argentine Peso", "Australian Dollar", "Barbadian Dollar", "Bangladeshi Taka", "Bermudan Dollar", "Brazilian Real", "Bitcoin", "Belarusian Ruble", "Bahamian Dollar", "Canadian Dollar", "Swiss Franc", "Chinese Yuan", "Costa Rican Colon", "Cuban Peso", "Czech Republic Koruna", "Danish Krone", "Dominican Peso", "Egyptian Pound", "Euro", "British Pound Sterling", "Hong Kong Dollar", "Israeli New Sheqel", "Indian Rupee", "Iraqi Dinar", "Iranian Rial", "Icelandic Krona", "Jamaican Dollar", "Japanese Yen", "Kenyan Shilling", "South Korean Won", "Kuwaiti Dinar", "Cayman Islands Dollar", "Kazakhstani Tenge", "Sri Lankan Rupee", "Mexican Peso", "Nigerian Naira", "Norwegian Krone", "Nepalese Rupee", "New Zealand Dollar", "Pakistani Rupee", "Polish Zloty", "Russian Ruble", "Saudi Riyal", "Swedish Krona", "Singapore Dollar", "Thai Baht", "Turkish Lira", "Trinadad & Tobago Dollar", "New Taiwan Dollar", "Ukranian Hryvnia", "Uraguayan Peso", "Venezuelan Boliver Fuerte", "Silver (troy oz)", "Gold (troy oz)", "East Carribean Dollar"]
    
    var currency: Currency!
    
    @IBAction func onConvertBtnPressed(sender: AnyObject) {
        
        self.updateUI()

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        currencyPicker.dataSource = self
        currencyPicker.delegate = self
        currency = Currency()
        
        currency.dowloadCurrency { () -> () in
            
        }

        
    }
    
    func updateUI() {
        
        if usdTxt.text != "" {
            
            if self.toLbl.text != "" {
                
               if self.toLbl.text == self.inputArr[0] as? String {
                    
                    let x = currency.AED(Double(usdTxt.text!)!)
                    
                    toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[1] as? String {
                
                    let x = currency.ANG(Double(usdTxt.text!)!)
                
                    toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[2] as? String {
                
                let x = currency.ARS(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[3] as? String {
                
                let x = currency.AUD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[4] as? String {
                
                let x = currency.BBD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[5] as? String {
                
                let x = currency.BDT(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[6] as? String {
                
                let x = currency.BMD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[7] as? String {
                
                let x = currency.BRL(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[8] as? String {
                
                let x = currency.BTC(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[9] as? String {
                
                let x = currency.BYR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[10] as? String {
                
                let x = currency.BZD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[11] as? String {
                
                let x = currency.CAD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[12] as? String {
                
                let x = currency.CHF(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[13] as? String {
                
                let x = currency.CNY(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[14] as? String {
                
                let x = currency.CRC(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[15] as? String {
                
                let x = currency.CUP(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[16] as? String {
                
                let x = currency.CZK(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[17] as? String {
                
                let x = currency.DKK(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[18] as? String {
                
                let x = currency.DOP(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[19] as? String {
                
                let x = currency.EGP(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[20] as? String {
                
                let x = currency.EUR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[21] as? String {
                
                let x = currency.GBP(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[22] as? String {
                
                let x = currency.HKD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[23] as? String {
                
                let x = currency.ILS(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[24] as? String {
                
                let x = currency.INR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[25] as? String {
                
                let x = currency.IQD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[26] as? String {
                
                let x = currency.IRR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[27] as? String {
                
                let x = currency.ISK(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[28] as? String {
                
                let x = currency.JMD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[29] as? String {
                
                let x = currency.JPY(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[30] as? String {
                
                let x = currency.KES(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[31] as? String {
                
                let x = currency.KRW(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[32] as? String {
                
                let x = currency.KWD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[33] as? String {
                
                let x = currency.KYD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[34] as? String {
                
                let x = currency.KZT(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[35] as? String {
                
                let x = currency.LKR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[36] as? String {
                
                let x = currency.MXN(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[37] as? String {
                
                let x = currency.NGN(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[38] as? String {
                
                let x = currency.NOK(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[39] as? String {
                
                let x = currency.NPR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[40] as? String {
                
                let x = currency.NZD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[41] as? String {
                
                let x = currency.PKR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[42] as? String {
                
                let x = currency.PLN(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[43] as? String {
                
                let x = currency.RUB(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[44] as? String {
                
                let x = currency.SAR(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[45] as? String {
                
                let x = currency.SEK(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[46] as? String {
                
                let x = currency.SGD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[47] as? String {
                
                let x = currency.THB(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[48] as? String {
                
                let x = currency.TRY(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[49] as? String {
                
                let x = currency.TTD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[50] as? String {
                
                let x = currency.TWD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[51] as? String {
                
                let x = currency.UAH(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[52] as? String {
                
                let x = currency.UYU(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[53] as? String {
                
                let x = currency.VEF(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[54] as? String {
                
                let x = currency.XAG(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[55] as? String {
                
                let x = currency.XAU(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else if self.toLbl.text == self.inputArr[56] as? String {
                
                let x = currency.XCD(Double(usdTxt.text!)!)
                
                toTxt.text = "\(x)"
                
               }else {
                
                return
                }

            }else {
                
                return
            }
            
        }else {
            
            return
        }
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return inputArr.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return inputArr.objectAtIndex(row) as? String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let x = currencyPicker.selectedRowInComponent(0)
        
        toLbl.text = inputArr[x] as? String
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let screenSize = UIScreen.mainScreen().bounds
        let pickerLabel = UILabel()
        
        pickerLabel.textColor = UIColor.darkGrayColor()
        pickerLabel.text = inputArr.objectAtIndex(row) as? String
        
        if screenSize.width <= 375.0 {
            
            pickerLabel.font = UIFont(name: "Helvetica Neue", size: 16.0)
            
        }else if screenSize.width > 375.0 {
            
            pickerLabel.font = UIFont(name: "Helvetica Neue", size: 24.0)
        }

        pickerLabel.textAlignment = NSTextAlignment.Center
        pickerLabel.backgroundColor = UIColor.whiteColor()
        return pickerLabel

        
    }
    
    //KEYBOARD CONTROLS
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        toTxt.resignFirstResponder()
        
        return true
        
    }


    
}
