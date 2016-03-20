//
//  UnitsVC.swift
//  Calc
//
//  Created by Robin Erickson on 2016-02-26.
//  Copyright © 2016 Incubo. All rights reserved.
//

import UIKit

class UnitsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {

    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var fromLbl: UILabel!
    @IBOutlet weak var fromTxt: UITextField!
    
    
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var toLbl: UILabel!
    @IBOutlet weak var toTxt: UITextField!
    
    @IBOutlet weak var convertBtn: UIButton!
    @IBOutlet weak var lengthBtn: UIButton!
    @IBOutlet weak var areaBtn: UIButton!
    @IBOutlet weak var volumeBtn: UIButton!
    @IBOutlet weak var massBtn: UIButton!
    @IBOutlet weak var tempBtn: UIButton!
    
    var inputArr = []
    
    let lengthPickData = ["Millimeters [mm]", "Centimeters [cm]", "Meters [m]", "Kilometers [km]", "Inches [in]", "Feet [ft]", "Yards [yd]", "Miles [ml]"]
    
    let areaPickData = ["Square Meters [m2]", "Hectares [ha]", "Square Kilometers [km2]", "Square Inches [in2]", "Square Feet [sqft]", "Square Yards [yd2]", "Acres [a]", "Square Miles [ml2]"]
    
    let volumePickData = ["Millilitre [ml]", "Cubic Meters [m3]", "Litres [l]", "Hectolitres [hl]", "Cubic Inches [in3]", "Cubic Feet [ft3]" , "Fluid Onces [fl oz]", "Pints [pt]", "Gallons [gal]", "US Fluid Onces [US fl oz]", "US Pints [US pt]", "US Gallons [US gal]"]
    
    let massPickData = ["Milligrams [mg]", "Grams [g]", "Kilograms [kg]", "Tonnes [t]", "Ounces [oz]", "Pounds [lbs]", "Stones [s]"]
    
    let tempPickData = ["Celcius [c]" , "Farenheit [f]"]
    

    @IBAction func onLengthPressed(sender: UIButton) {
        
        areaBtn.selected = false
        lengthBtn.selected = true
        volumeBtn.selected = false
        massBtn.selected = false
        tempBtn.selected = false
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        fromTxt.text = ""
        toTxt.text = ""
        inputArr = lengthPickData
        fromPicker.reloadAllComponents()
        toPicker.reloadAllComponents()
    }
    
    @IBAction func onAreaPressed(sender: UIButton) {
        
        areaBtn.selected = true
        lengthBtn.selected = false
        volumeBtn.selected = false
        massBtn.selected = false
        tempBtn.selected = false
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        fromTxt.text = ""
        toTxt.text = ""
        inputArr = areaPickData
        fromPicker.reloadAllComponents()
        toPicker.reloadAllComponents()
        
    }
    
    @IBAction func onVolumePressed(sender: UIButton) {
        
        areaBtn.selected = false
        lengthBtn.selected = false
        volumeBtn.selected = true
        massBtn.selected = false
        tempBtn.selected = false
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        fromTxt.text = ""
        toTxt.text = ""
        inputArr = volumePickData
        fromPicker.reloadAllComponents()
        toPicker.reloadAllComponents()

    }
    
    @IBAction func onMassPressed(sender: UIButton) {
        
        areaBtn.selected = false
        lengthBtn.selected = false
        volumeBtn.selected = false
        massBtn.selected = true
        tempBtn.selected = false
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        fromTxt.text = ""
        toTxt.text = ""
        inputArr = massPickData
        fromPicker.reloadAllComponents()
        toPicker.reloadAllComponents()

    }
    
    @IBAction func onTempPressed(sender: UIButton) {
        
        areaBtn.selected = false
        lengthBtn.selected = false
        volumeBtn.selected = false
        massBtn.selected = false
        tempBtn.selected = true
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        fromTxt.text = ""
        toTxt.text = ""
        inputArr = tempPickData
        fromPicker.reloadAllComponents()
        toPicker.reloadAllComponents()

    }
    
    @IBAction func onConvertPressed(sender: AnyObject) {
      
        if toLbl.text != "Select a Unit" && fromTxt.text?.isNumeric() == true {
            
            if inputArr == tempPickData {
                
                tempConvert()
                
            }else if inputArr == lengthPickData {
                
                lengthConvert()
                
            }else if inputArr == areaPickData {
                
                areaConvert()
                
            }else if inputArr == volumePickData {
                
                volumeConvert()
                
            }else if inputArr == massPickData {
                
                massConvert()
                
            }else {
                
                return
            }
            
            fromTxt.attributedPlaceholder = NSAttributedString(string: "")

        }else {
            
            toTxt.text = ""
            fromTxt.text = ""
            fromTxt.attributedPlaceholder = NSAttributedString(string: "Error")
            
            return
        }
        
            
    }
        
    
    
    func tempConvert() {
        
        if fromTxt.text != "" {
            
            if fromLbl.text != "" {
                
                let temp = Temperature.init(temp: fromTxt.text!)
                
                if fromLbl.text == toLbl.text {
                    
                    toTxt.text = fromTxt.text
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = temp.celToFarConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = temp.farToCelConvert(fromTxt.text!)
                    
                }
        
            }else{
                
                return
            }
            
        }else {
            
            return
        }
    }

    
    func lengthConvert() {
        
        if fromTxt.text != "" {
            
            if fromLbl.text != "" {
                
                let len = Length.init(len: fromTxt.text!)
                
                if fromLbl.text == toLbl.text {
                    
                    toTxt.text = fromTxt.text
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.mmToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.mmToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.mmToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.mmToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.mmToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.mmToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.mmToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.cmToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.cmToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.cmToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.cmToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.cmToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.cmToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.cmToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.mToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.mToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.mToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.mToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.mToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.mToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.mToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.kmToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.kmToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.kmToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.kmToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.kmToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.kmToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.kmToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.inToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.inToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.inToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.inToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.inToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.inToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.inToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.ftToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.ftToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.ftToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.ftToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.ftToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.ftToYdConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.ftToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.ydToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.ydToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.ydToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.ydToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.ydToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.ydToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = len.ydToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = len.mlToMmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = len.mlToCmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = len.mlToMConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = len.mlToKmConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = len.mlToInConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = len.mlToFtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = len.mlToYdConvert(fromTxt.text!)
                    
                }

            }else {
                
                return
            }
            
        }else {
            
            return
        }
        
    }
    
    func areaConvert() {
        
        if fromTxt.text != "" {
            
            if fromLbl.text != "" {
                
                let area = Area.init(area: fromTxt.text!)
                
                if fromLbl.text == toLbl.text {
                    
                    toTxt.text = fromTxt.text
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.m2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.m2ToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.m2ToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.m2ToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.m2ToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.m2ToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.m2ToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.hecToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.hecToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.hecToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.hecToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.hecToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.hecToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.hecToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.km2ToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.km2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.km2ToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.km2ToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.km2ToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.km2ToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.km2ToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.in2ToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.in2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.in2ToKm2Convert(fromTxt.text!)
                        
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.in2ToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.in2ToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.in2ToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.in2ToMl2Convert(fromTxt.text!)
                       
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.ft2ToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.ft2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.ft2ToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.ft2ToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.ft2ToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.ft2ToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.ft2ToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.yd2ToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.yd2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.yd2ToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.yd2ToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.yd2ToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.yd2ToAcrConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.yd2ToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.acrToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.acrToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.acrToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.acrToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.acrToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.acrToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = area.acrToMl2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = area.ml2ToM2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = area.ml2ToHecConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = area.ml2ToKm2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = area.ml2ToIn2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = area.ml2ToFt2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = area.ml2ToYd2Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = area.ml2ToAcrConvert(fromTxt.text!)
                    
                }

            }else {
                
                return
            }
            
        }else {
            
            return
        }
        
    }
    
    func volumeConvert() {
        
        if fromTxt.text != "" {
            
            if fromLbl.text != "" {
                
                let vol = Volume.init(vol: fromTxt.text!)
                
                if fromLbl.text == toLbl.text {
                    
                    toTxt.text = fromTxt.text
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.mlToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.mlToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.mlToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.mlToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.mlToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.mlToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.mlToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.mlToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.mlToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.mlToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.mlToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.m3ToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.m3ToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.m3ToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.m3ToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.m3ToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.m3ToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.m3ToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.m3ToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.m3ToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.m3ToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.m3ToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.lToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.lToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.lToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.lToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.lToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.lToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.lToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.lToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.lToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.lToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.lToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.hecLToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.hecLToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.hecLToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.hecLToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.hecLToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.hecLToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.hecLToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.hecLToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.hecLToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.hecLToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.hecLToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.in3ToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.in3ToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.in3ToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.in3ToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.in3ToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.in3ToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.in3ToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.in3ToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.in3ToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.in3ToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.in3ToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.ft3ToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.ft3ToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.ft3ToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.ft3ToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.ft3ToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.ft3ToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.ft3ToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.ft3ToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.ft3ToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.ft3ToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.ft3ToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.flozToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.flozToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.flozToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.flozToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.flozToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.flozToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.flozToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.flozToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.flozToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.flozToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.flozToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.ptToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.ptToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.ptToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.ptToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.ptToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.ptToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.ptToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.ptToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.ptToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.ptToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[7] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.ptToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.galToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.galToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.galToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.galToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.galToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.galToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.galToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.galToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.galToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.galToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[8] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.galToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.flozUSToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.flozUSToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.flozUSToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.flozUSToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.flozUSToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.flozUSToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.flozUSToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.flozUSToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.flozUSToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.flozUSToPtUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[9] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.flozUSToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.ptUSToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.ptUSToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.ptUSToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.ptUSToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.ptUSToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.ptUSToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.ptUSToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.ptUSToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.ptUSToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.ptUSToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[10] as! String && toLbl.text == inputArr[11] as? String {
                    
                    toTxt.text = vol.ptUSToGalUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = vol.galUSToMlConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = vol.galUSToM3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = vol.galUSToLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = vol.galUSToHecLConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = vol.galUSToIn3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = vol.galUSToFt3Convert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = vol.galUSToFlOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[7] as? String {
                    
                    toTxt.text = vol.galUSToPtConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[8] as? String {
                    
                    toTxt.text = vol.galUSToGalConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[9] as? String {
                    
                    toTxt.text = vol.galUSToFlOzUSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[11] as! String && toLbl.text == inputArr[10] as? String {
                    
                    toTxt.text = vol.galUSToPtUSConvert(fromTxt.text!)
                    
                }

            }else {
                
                return
            }
            
        }else {
            
            return
        }
        
    }

    func massConvert() {
        
        if fromTxt.text != "" {
            
            if fromLbl.text != "" {
                
                let mass = Mass.init(mass: fromTxt.text!)
                
                if fromLbl.text == toLbl.text {
                    
                    toTxt.text = fromTxt.text
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.mgToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.mgToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.mgToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.mgToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.mgToLbsConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[0] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.mgToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.gToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.gToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.gToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.gToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.gToLbsConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[1] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.gToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.kgToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.kgToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.kgToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.kgToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.kgToLbsConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[2] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.kgToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.tToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.tToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.tToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.tToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.tToLbsConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[3] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.tToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.ozToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.ozToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.ozToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.ozToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.ozToLbsConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[4] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.ozToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.lbsToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.lbsToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.lbsToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.lbsToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.lbsToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[5] as! String && toLbl.text == inputArr[6] as? String {
                    
                    toTxt.text = mass.lbsToSConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[0] as? String {
                    
                    toTxt.text = mass.sToMgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[1] as? String {
                    
                    toTxt.text = mass.sToGConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[2] as? String {
                    
                    toTxt.text = mass.sToKgConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[3] as? String {
                    
                    toTxt.text = mass.sToTConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[4] as? String {
                    
                    toTxt.text = mass.sToOzConvert(fromTxt.text!)
                    
                }else if fromLbl.text! == inputArr[6] as! String && toLbl.text == inputArr[5] as? String {
                    
                    toTxt.text = mass.sToLbsConvert(fromTxt.text!)
                    
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
        
        let x = fromPicker.selectedRowInComponent(0)
        
        fromLbl.text = inputArr[x] as? String
        
        let y = toPicker.selectedRowInComponent(0)
        
        toLbl.text = inputArr[y] as? String
        
        toTxt.text = ""
        
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        let screenSize = UIScreen.mainScreen().bounds
        let pickerLabel = UILabel()
        
        pickerLabel.textColor = UIColor.darkGrayColor()
        pickerLabel.text = inputArr.objectAtIndex(row) as? String
        
        if screenSize.width <= 375.0 {
            
            pickerLabel.font = UIFont(name: "Helvetica Neue", size: 12.0)
            
        }else if screenSize.width == 414.0 {
            
            pickerLabel.font = UIFont(name: "Helvetica Neue", size: 15.0)
            
        }else if screenSize.width > 414.0 {
            
            pickerLabel.font = UIFont(name: "Helvetica Neue", size: 21.0)
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
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        fromPicker.dataSource = self
        fromPicker.delegate = self
        toPicker.dataSource = self
        toPicker.delegate = self
        
        inputArr = areaPickData
        areaBtn.selected = true
        
        fromLbl.text = "Select a Unit"
        toLbl.text = "Select a Unit"
        
        toTxt.delegate = self
        
        convertBtn.layer.borderWidth = 0.5
       
    }

}
