//
//  ViewController.swift
//  Calc
//
//  Created by Robin Erickson on 2016-02-25.
//  Copyright © 2016 Incubo. All rights reserved.

import UIKit
import MessageUI
import CoreData
import SwiftString

////MATH FUNCTIONS
//func add(leftVal:Double, rightVal: Double) -> Double {
//    
//    let result = leftVal + rightVal
//    
//    return result
//}
//
//func sub(leftVal:Double, rightVal: Double) -> Double {
//    
//    let result = leftVal - rightVal
//    
//    return result
//}
//
//func mul(leftVal:Double, rightVal: Double) -> Double {
//    
//    let result = leftVal * rightVal
//    
//    return result
//}
//
//func div(leftVal:Double, rightVal: Double) -> Double {
//    
//    let result = leftVal / rightVal
//    
//    return result
//}
//
//typealias Op = (Double, Double) -> Double
//let ops: [String: Op] = ["+": add, "-": sub, "*": mul, "/": div]



class CalcVC: UIViewController, UITextFieldDelegate, MFMailComposeViewControllerDelegate {
    
    //IBOUTLETS
    @IBOutlet weak var rowToSelectTxt: UITextField!
   
    @IBOutlet weak var outputTxt: UITextView!
    
    
    @IBOutlet var calcBtns: [UIButton]!
   
    @IBOutlet weak var clearBtn: TopRowButton!
    @IBOutlet weak var addNoteTxt: UITextField!
    @IBOutlet weak var noteLbl: UILabel!
    @IBOutlet weak var exportBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var calcStackView: UIStackView!
    @IBOutlet weak var currencyBtn: UIButton!
    @IBOutlet weak var unitsBtn: UIButton!

    @IBOutlet weak var equalsBtn: OpButton!
    
    
    //VARS
    enum Operation: String {
        
        case Divide
        case Multiply
        case Add
        case Subtract
        case Percent
        case Convert
        case Empty
    }
    
    var runningNum = ""
    var leftValString = ""
    var rightValString = ""
    var currentOperation: Operation = Operation.Empty
    var result = [String]()
    var mainResultArr = [String]()
    var resultCalc:Double!
    var arrOutput = ""
    var note = ""
    var row = ""
    var sign = ""
    let date = NSDate()
    var isEditingNote = false
    
   
    //IBACTIONS
    @IBAction func onUnitsPressed(sender: AnyObject) {
        
        clearSavedData()
        saveArr()
    }
    
    
    @IBAction func onCurrencyPressed(sender: AnyObject) {
        
        clearSavedData()
        saveArr()
    }
    
    
    @IBAction func onExportPressed(sender: UIButton) {
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.ShortStyle
        formatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        let dateString = formatter.stringFromDate(date)
        
        if (MFMailComposeViewController.canSendMail()) {
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            mailComposer.setSubject(dateString)
            mailComposer.setMessageBody("", isHTML: false)
            
            let joinedString = mainResultArr.joinWithSeparator("\n")
            if let data = (joinedString as NSString).dataUsingEncoding(NSUTF8StringEncoding) {
                
                mailComposer.addAttachmentData(data, mimeType: "text/plain", fileName: "Calculation " + dateString)
                self.presentViewController(mailComposer, animated: true, completion: nil)
                
            }
            
            
        }else {
            
            let err = NSError.self
            
            print(err)
        }
        
    }
    
    
    @IBAction func editLineBtn(sender: UIButton) {
        
        row = rowToSelectTxt.text!
        
        exportBtn.hidden = true
        currencyBtn.hidden = true
        unitsBtn.hidden = true
        
        
        rowToSelectTxt.enabled = true
        rowToSelectTxt.highlighted = true
        calcStackView.hidden = true
        editBtn.setTitle("Confirm", forState: .Normal)
        
        rowToSelectTxt.becomeFirstResponder()
        
        cancelBtn.enabled = true
        
        rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "Line #")
        
        if rowToSelectTxt.text != "" {
            
            if result.count != 0 && result.count - 1 >= Int(row) {
                
                noteLbl.hidden = false
                noteLbl.text = "Note For Line: " + row
                addNoteTxt.hidden = false
                editBtn.enabled = false
                addBtn.hidden = false
                addBtn.enabled = true
                
                editNote()
                
                rowToSelectTxt.endEditing(true)
                
                addNoteTxt.becomeFirstResponder()
                
                let selectedRange = addNoteTxt.endOfDocument
                
                if let newPosition = addNoteTxt.positionFromPosition(selectedRange, offset: -1) {
                    
                    addNoteTxt.selectedTextRange = addNoteTxt.textRangeFromPosition(newPosition, toPosition: newPosition)
                        
                }
                    
                
            }else {
                
                rowToSelectTxt.text = ""
                
                rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "Line Error")
            }
        }
    }
    
    @IBAction func addNoteBtn(sender: UIButton) {
        
        editBtn.enabled = true
        addBtn.enabled = false
        addBtn.hidden = true
        noteLbl.hidden = true
        addNoteTxt.hidden = true
        rowToSelectTxt.enabled = false
        calcStackView.hidden = false
        cancelBtn.enabled = false
        exportBtn.hidden = false
        currencyBtn.hidden = false
        unitsBtn.hidden = false
        
        editBtn.setTitle("Edit Line", forState: .Normal)
        
        self.view.endEditing(true)
        
        addNote()
        
        
    }
    
    @IBAction func onCancelPressed(sender: AnyObject) {
       
            editBtn.enabled = true
            addBtn.enabled = false
            addBtn.hidden = true
            noteLbl.hidden = true
            addNoteTxt.hidden = true
            rowToSelectTxt.text = ""
            rowToSelectTxt.enabled = false
            addNoteTxt.text = ""
            calcStackView.hidden = false
            cancelBtn.enabled = false
            exportBtn.hidden = false
            currencyBtn.hidden = false
            unitsBtn.hidden = false
            
            
            
            rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "Line #")
            
            editBtn.setTitle("Edit Line", forState: .Normal)
            
            self.view.endEditing(true)

        
    }
    
    @IBAction func numPressed(btn: CalcButton) {
        
        equalsBtn.enabled = true
        
        if rowToSelectTxt.editing == true {
            
            rowToSelectTxt.text! += btn.currentTitle!
        }else {
            
            clearBtn.selected = false
            
            runningNum += btn.currentTitle!
            
            outputTxt.text = runningNum
            
        }
        
        scrollToBottom()
        clearAll()
        
    }
    
    @IBAction func onAddPressed(sender: OpButton) {
        
        sign = "+"
        
        clearBtn.selected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Add)
        
        for i in calcBtns {
            
            i.enabled = true
        }
        
    }
    
    @IBAction func onSubtractPressed(sender: OpButton) {
        
        sign = "-"
        
        clearBtn.selected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Subtract)
        
        for i in calcBtns {
            
            i.enabled = true
        }

        
    }
    
    @IBAction func onMultiplyPressed(sender: OpButton) {
        
        sign = "x"
        
        clearBtn.selected = false
       
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Multiply)
        
        for i in calcBtns {
            
            i.enabled = true
        }

        
    }
    
    @IBAction func onDividePressed(sender: OpButton) {
        
        sign = "/"
        
        clearBtn.selected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Divide)
        
        for i in calcBtns {
            
            i.enabled = true
        }

        
    }
    
    @IBAction func onEqualsPressed(sender: OpButton) {
        
        scrollToBottom()
        
        if runningNum == "" {
            
            return
            
        }else if leftValString != "" {
            
            clearAll()
            
            processOperation(currentOperation)
            
            runningNum = String(resultCalc)
            
            currentOperation = Operation.Empty
            
            
        }else {
            
            clearAll()
            
            leftValString = "0.0"
            
            processOperation(currentOperation)
            
            runningNum = String(resultCalc)
            
            currentOperation = Operation.Empty
            
        }
        
        clearBtn.selected = true
        
        for i in calcBtns {
            
            i.enabled = false
        }
    }
    
    @IBAction func onDotPressed(sender: CalcButton) {
        
        runningNum += "."
        
        outputTxt.text = runningNum
        
        rightValString = runningNum + rightValString
        
        
    }
    
    @IBAction func onPercentPresssed(sender: TopRowButton) {
        
        clearBtn.selected = true
        
        currentOperation = Operation.Percent
        
        processOperation(Operation.Percent)
        
    }
    
    @IBAction func onClearPressed(sender: TopRowButton) {
        
        for i in calcBtns {
            
            i.enabled = true
        }
        
        equalsBtn.enabled = false
        
        if sender.selected {
            
            if !result.isEmpty {
            
            let alert = UIAlertController(title: "", message: "Are you sure you want to delete the whole claculation?", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            
            alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction) -> Void in
                
            self.outputTxt.text = ""
            
            self.runningNum = ""
            
            self.result.removeAll()
            
            self.mainResultArr.removeAll()
            
            self.arrOutput = ""
            
            self.leftValString = ""
            
            self.rightValString = ""
                
            self.resultCalc = nil
                
            self.currentOperation = Operation.Empty
            
            self.clearSavedData()
                
           }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction) -> Void in
                
                self.dismissViewControllerAnimated(true, completion: nil)
                
            }))
            
            presentViewController(alert, animated: true, completion: nil)
                
            }else {
                
                return
            }
            
        }else {
            
            clearBtn.selected = false
            
            outputTxt.text = leftValString
            
            runningNum = leftValString
            
            currentOperation = Operation.Empty
            
        }
        
    }
    
    @IBAction func onChangeSignPressed(sender: AnyObject) {
        
        let op = currentOperation
        
        isNegative(op)
    }
    
    
    
    //FUNCTIONS
    func addNote() {
            
            row = rowToSelectTxt.text!
            
            for var i = 0; i < result.count; i++ {
                
                if i == Int(row) {
                    
                    let num = result[i]
                    
                    result.removeAtIndex(i)
                    
                    let addNoteTrim = addNoteTxt.text!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
                    
                    //if there is already a note
                    if isEditingNote == true {
                        
                        result.insert(addNoteTrim, atIndex: i)
                        
                        //if there is not already a note
                    }else if isEditingNote == false {
                        
                        result.insert(num + " " + "{" + addNoteTrim + "}", atIndex: i)
                    }
                    
                }
            }
            
            rowToSelectTxt.text = ""
            
            addNoteTxt.text = ""
            
            clearAll()
            
            updateArray()
            
            editBtn.enabled = true
            
        
    }
    

    //check if line to edit exists and if a note already exists
    func editNote() {
        
        row = rowToSelectTxt.text!
        
        if result.count > 0 && result.count >= Int(row) {
            
            for var i = 0; i < result.count; i++ {
                
                if i == Int(row) {
                    
                    let resultReturn = result[i]
                    
                    //if there is a note
                    if resultReturn.contains("{") {
                        
                        isEditingNote = true
                        
                        addNoteTxt.text = result[i]
                    
                    }else {
                        
                        //if there isn't a note
                        isEditingNote = false
                        
                        let x = resultReturn.characters.count
                        
                        let resultString = NSString(string: resultReturn)
                        
                        addNoteTxt.text = resultString.substringFromIndex(x)
                    }
                    
                }else {
                    
                    addNoteTxt.attributedPlaceholder = NSAttributedString(string: "")
                }
            }
            
        }else {
            
            addNoteTxt.attributedPlaceholder = NSAttributedString(string: "No Such Line")
        }
        
    }
    
    
    
    func saveArr() {
        
        if !result.isEmpty {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            
            let context = app.managedObjectContext
            
            let entity = NSEntityDescription.entityForName("Calculation", inManagedObjectContext: context)
            
            let calc = Calculation(entity: entity!, insertIntoManagedObjectContext: context)
            
            let tempArr = result.joinWithSeparator("\n")
            
            calc.calcArray = tempArr
         
            do {
                
                try context.save()
                
                
                }catch let err as NSError {
                    
                    print(err.debugDescription)
                    
                }
            }
            
            
    }
    
    
        
    func fetchArr() {
        
        clearAll()
        
        result.removeAll()
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Calculation")
        
        do {
            
            let resultData = try context.executeFetchRequest(fetchRequest)
            
            
            for res in resultData {
                
                let tempArr = res.valueForKey("calcArray")! as! String
                
                let tempArrSeparated = tempArr.componentsSeparatedByString("\n")
                
                result = tempArrSeparated
                
                updateSavedArray(result)
                
            }
            
        }catch let err as NSError {
            
            print(err.debugDescription)
        }

        
    }
    
    
    
    func clearSavedData() {
        
        
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let coord = app.persistentStoreCoordinator
        
        let fetchRequest = NSFetchRequest(entityName: "Calculation")
        
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            
            try coord.executeRequest(deleteRequest, withContext: context)
            
        }catch let err as NSError {
            
            print(err.debugDescription)
        }
        
        
        
    }
    
    
    func clearAll() {
        
        arrOutput = ""
        
        mainResultArr.removeAll()
        
    }
    
    
    
    func isNegative(op: Operation) {
            
                if runningNum != "" {
                    
                    runningNum = String(Double(runningNum)! - (Double(runningNum)! * 2.0))
                    
                    outputTxt.text = runningNum
                
            }
        }
    
    
    func processOperation(op: Operation) {
        
        
        if currentOperation != Operation.Empty {
            
            if runningNum != "" {
                
                rightValString = runningNum
                
                runningNum = ""
                
                if currentOperation == Operation.Add {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! + Double(rightValString)!
                    
                    resultCalc = Double(round(10000*resultCalcTemp)/10000)
                    
                    result.append(leftValString + " + ")
                    
                }else if currentOperation == Operation.Subtract {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! - Double(rightValString)!
                    
                    resultCalc = Double(round(10000*resultCalcTemp)/10000)
                    
                    result.append(leftValString + " - ")
                    
                    
                }else if currentOperation == Operation.Multiply {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! * Double(rightValString)!
                    
                    resultCalc = Double(round(10000*resultCalcTemp)/10000)
                    
                    result.append(leftValString + " x ")
                    
                    
                }else if currentOperation == Operation.Divide {
                    
                    if rightValString == "0.0" {
                        
                        clearAll()
                        
                        outputTxt.text = "0.0"
                        
                    }else {
                        
                        clearAll()
                        
                        let resultCalcTemp = Double(leftValString)! / Double(rightValString)!
                        
                        resultCalc = Double(round(10000*resultCalcTemp)/10000)
                        
                        result.append(leftValString + " / ")
                        
                    }
                    
                }else if currentOperation == Operation.Percent {
                    
                    
                    clearAll()
          
                    if leftValString != "" && rightValString != "" {
                        
                        let percentage = Double(rightValString)! / 100
                        
                        let percentCalcTemp = Double(leftValString)! * Double(percentage)
                        
                        let percentCalc = Double(round(10000*percentCalcTemp)/10000)
                        
                        if sign == "+" {
                            
                            let resultCalcTemp = Double(leftValString)! + Double(percentCalc)
                            
                            resultCalc = Double(round(10000*resultCalcTemp)/10000)
                            
                        }else if sign == "-" {
                            
                            let resultCalcTemp = Double(leftValString)! - Double(percentCalc)
                            
                            resultCalc = Double(round(10000*resultCalcTemp)/10000)
                            
                        }else if sign == "x" {
                            
                            let resultCalcTemp = Double(leftValString)! * Double(percentCalc)
                            
                            resultCalc = Double(round(10000*resultCalcTemp)/10000)
                            
                        }else if sign == "/" {
                            
                            let resultCalcTemp = Double(leftValString)! / Double(percentCalc)
                            
                            resultCalc = Double(round(10000*resultCalcTemp)/10000)
                            
                        }
                        
                        runningNum = String(resultCalc)
                        
                        rightValString = rightValString + "% " +  "(" + "\(percentCalc)" + ")"
                        
                        result.append(leftValString + " " + sign)
                        
                        runningNum = ""
                        
                    }else {
                        
                        resultCalc = Double(rightValString)! / 100
                        
                        runningNum = String(resultCalc)
                        
                        rightValString = rightValString + "%"
                        

                    }
                    
                    
                    runningNum = ""
                }
                    
                
                result.append(rightValString)
                result.append("= " + "\(resultCalc)")
                
                leftValString = String(resultCalc)
                
                updateArray()
            }
            
            currentOperation = op
            
            
        }else {
            
            leftValString = runningNum
            
            runningNum = ""
            
            currentOperation = op
            
        }
        
    }
    
    
    
    func scrollToBottom() {
        
        let range:NSRange = NSMakeRange(outputTxt.text!.characters.count, 5)
        
        outputTxt.scrollRangeToVisible(range)
        
    }

    
    
    func updateArray() {
        
        for i in result {
            
            mainResultArr.append(i)
            
        }
        
        for (index,element) in mainResultArr.enumerate() {
            
            arrOutput += String(index) + " | " + element + "\n"
        }
        
        
        
        outputTxt.text = arrOutput
        
    }
    
    
    func updateSavedArray(arr: [String]) {
        
        for i in arr {
            
            mainResultArr.append(i)
        }
        
        for (index, element) in mainResultArr.enumerate() {
            
            arrOutput += String(index) + " | " + element + "\n"
        }
        
        let runTemp = mainResultArr.last!
        
        let runTempTrim = runTemp.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        
        if let x = runTempTrim.between("=", "{") {
            
            let xTemp = x.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            
            runningNum = xTemp
        }else {
            
            let xTemp = (runTempTrim as NSString).substringFromIndex(2)
            runningNum = xTemp
            }
        
        outputTxt.text = arrOutput
        
    }
    

    


    //MAIL FUNCTION
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    //KEYBOARD CONTROLS
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        (rowToSelectTxt).resignFirstResponder()
        (addNoteTxt).resignFirstResponder()
        
        
        return true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearBtn.selected = true
        clearBtn.setTitle("C", forState: .Normal)
        clearBtn.setTitle("A/C", forState: .Selected)
        clearBtn.setTitleColor(UIColor.whiteColor(), forState: .Selected)
        addBtn.hidden = true
        addNoteTxt.hidden = true
        noteLbl.hidden = true
        addBtn.enabled = false
        cancelBtn.enabled = false
        addBtn.setTitleColor(UIColor.darkGrayColor(), forState: .Disabled)
        cancelBtn.setTitleColor(UIColor.darkGrayColor(), forState: .Disabled)
        rowToSelectTxt.enabled = false
        
        self.addNoteTxt.delegate = self
        self.rowToSelectTxt.delegate = self
        
        outputTxt.font = outputTxt.font?.fontWithSize(18)
        
        fetchArr()
        
        equalsBtn.enabled = false
        
        }
    
    }

