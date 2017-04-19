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
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func >= <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l >= r
  default:
    return !(lhs < rhs)
  }
}



class CalcVC: UIViewController, UITextFieldDelegate, UITextViewDelegate ,MFMailComposeViewControllerDelegate {
    
    //IBOUTLETS
    @IBOutlet weak var rowToSelectTxt: UITextField!
   
    @IBOutlet weak var noteStack: UIStackView!
    @IBOutlet weak var outputTxt: UITextView!
    
    @IBOutlet weak var outputTxtHeight: NSLayoutConstraint!
    @IBOutlet var calcBtns: [UIButton]!
   
    @IBOutlet weak var bottomPinHeight: NSLayoutConstraint!
    @IBOutlet weak var clearBtn: TopRowButton!
    @IBOutlet weak var addNoteTxt: UITextField!
    @IBOutlet weak var noteLbl: UILabel!
    @IBOutlet weak var exportBtn: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var addNoteBtn: UIButton!
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
    let date = Date()
    var isEditingNote = false
    var counter = 0
    var reviewCounter = 25
    //var haveRated = false
    
    //IBACTIONS
    @IBAction func onUnitsPressed(_ sender: AnyObject) {
        
        clearSavedData()
        saveArr()
    }
    
    
    @IBAction func onCurrencyPressed(_ sender: AnyObject) {
        
        clearSavedData()
        saveArr()
    }
    
    
    @IBAction func onExportPressed(_ sender: UIButton) {
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.short
        formatter.timeStyle = DateFormatter.Style.short
        
        let dateString = formatter.string(from: date)
        
        if (MFMailComposeViewController.canSendMail()) {
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            mailComposer.setMessageBody("", isHTML: false)
            
            let joinedString = mainResultArr.joined(separator: "\n")
            if let data = (joinedString as NSString).data(using: String.Encoding.utf8) {
                
                mailComposer.addAttachmentData(data, mimeType: "text/plain", fileName: "Calculation " + dateString)
                self.present(mailComposer, animated: true, completion: nil)
                
            }
            
            
        }else {
            
            let err = NSError.self
            
            print(err)
        }
        
    }
    
    
    @IBAction func addNoteBtn(_ sender: UIButton) {
        
        row = rowToSelectTxt.text!
        
        exportBtn.isHidden = true
        currencyBtn.isHidden = true
        unitsBtn.isHidden = true
        
        rowToSelectTxt.isEnabled = true
        rowToSelectTxt.isHighlighted = true
        calcStackView.isHidden = true
        addNoteBtn.setTitle("Confirm", for: UIControlState())
        
        rowToSelectTxt.becomeFirstResponder()
        
        cancelBtn.isEnabled = true
        
        rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "Line #")
        
        if rowToSelectTxt.text != "" {
            
            if result.count != 0 && result.count - 1 >= Int(row) && rowToSelectTxt.text?.isNumeric() == true {
                
                noteLbl.text = "Note For Line: " + row
                noteStack.isHidden = false
                
                editNote()
                
                rowToSelectTxt.endEditing(true)
                
                addNoteTxt.becomeFirstResponder()
                
                let selectedRange = addNoteTxt.endOfDocument
                
                if let newPosition = addNoteTxt.position(from: selectedRange, offset: -1) {
                    
                    addNoteTxt.selectedTextRange = addNoteTxt.textRange(from: newPosition, to: newPosition)
                        
                }
                    
                
            }else {
                
                rowToSelectTxt.text = ""
                
                rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "Line Error")
            }
        }
    }
    
    @IBAction func doneBtn(_ sender: UIButton) {
        
        addNoteBtn.isEnabled = true
        noteStack.isHidden = true
        rowToSelectTxt.isEnabled = false
        calcStackView.isHidden = false
        cancelBtn.isEnabled = false
        exportBtn.isHidden = false
        currencyBtn.isHidden = false
        unitsBtn.isHidden = false
        
        addNoteBtn.setTitle("Add Note", for: UIControlState())
        
        rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "")
        
        self.view.endEditing(true)
        
        addNote()
        
        
    }
    
    @IBAction func onCancelPressed(_ sender: AnyObject) {
       
        addNoteBtn.isEnabled = true
        noteStack.isHidden = true
        rowToSelectTxt.text = ""
        rowToSelectTxt.isEnabled = false
        addNoteTxt.text = ""
        calcStackView.isHidden = false
        cancelBtn.isEnabled = false
        exportBtn.isHidden = false
        currencyBtn.isHidden = false
        unitsBtn.isHidden = false
            
            
            
        rowToSelectTxt.attributedPlaceholder = NSAttributedString(string: "")
        
        addNoteBtn.setTitle("Add Note", for: UIControlState())
        
        self.view.endEditing(true)

        
    }
    
    @IBAction func numPressed(_ btn: CalcButton) {
        
        equalsBtn.isEnabled = true
        
        if rowToSelectTxt.isEditing == true {
            
            rowToSelectTxt.text! += btn.currentTitle!
        }else {
            
            clearBtn.isSelected = false
            
            runningNum += btn.currentTitle!
            
            outputTxt.text = runningNum
            
        }
        
        scrollToBottom()
        clearAll()
        
    }
    
    @IBAction func onAddPressed(_ sender: OpButton) {
        
        sign = "+"
        
        clearBtn.isSelected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Add)
        
        for i in calcBtns {
            
            i.isEnabled = true
        }
        
    }
    
    @IBAction func onSubtractPressed(_ sender: OpButton) {
        
        sign = "-"
        
        clearBtn.isSelected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Subtract)
        
        for i in calcBtns {
            
            i.isEnabled = true
        }

        
    }
    
    @IBAction func onMultiplyPressed(_ sender: OpButton) {
        
        sign = "x"
        
        clearBtn.isSelected = false
       
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Multiply)
        
        for i in calcBtns {
            
            i.isEnabled = true
        }

        
    }
    
    @IBAction func onDividePressed(_ sender: OpButton) {
        
        sign = "/"
        
        clearBtn.isSelected = false
        
        outputTxt.text = runningNum + "  " + sign
        
        processOperation(Operation.Divide)
        
        for i in calcBtns {
            
            i.isEnabled = true
        }

        
    }
    
    @IBAction func onEqualsPressed(_ sender: OpButton) {
        
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
        
        clearBtn.isSelected = true
        
        for i in calcBtns {
            
            i.isEnabled = false
        }
        
    }
    
    @IBAction func onDotPressed(_ sender: CalcButton) {
        
        runningNum += "."
        
        outputTxt.text = runningNum
        
        rightValString = runningNum + rightValString
        
        
    }
    
    @IBAction func onPercentPresssed(_ sender: TopRowButton) {
        
        clearBtn.isSelected = true
        
        currentOperation = Operation.Percent
        
        processOperation(Operation.Percent)
        
    }
    
    @IBAction func onClearPressed(_ sender: TopRowButton) {
        
        
        equalsBtn.isEnabled = false
        
        if sender.isSelected {
            
            if !result.isEmpty {
                
                for i in calcBtns {
                    
                    i.isEnabled = true
                }

            
            let alert = UIAlertController(title: "", message: "Are you sure you want to delete the whole calculation?", preferredStyle: UIAlertControllerStyle.alert)
            
            
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction) -> Void in
                
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
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction) -> Void in
                
                for i in self.calcBtns {
                    
                    i.isEnabled = false
                }
                
                return
                
            }))
                alert.view.tintColor = ALERT_COLOR
                present(alert, animated: true, completion: {
                    
                    alert.view.tintColor = ALERT_COLOR
                })
                
            }else {
                
                return
            }
            
        }else {
            
            for i in calcBtns {
                
                i.isEnabled = false
            }
            
            clearBtn.isSelected = false
            
            outputTxt.text = leftValString
            
            runningNum = leftValString
            
            currentOperation = Operation.Empty
            
        }
        
    }
    
    @IBAction func onChangeSignPressed(_ sender: AnyObject) {
        
        let op = currentOperation
        
        isNegative(op)
    }
    
    
    
    //FUNCTIONS
    func addNote() {
            
            row = rowToSelectTxt.text!
            
            for i in 0 ..< result.count {
                
                if i == Int(row) && row.isNumeric() == true {
                    
                    let num = result[i]
                    
                    result.remove(at: i)
                    
                    let addNoteTrim = addNoteTxt.text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
                    
                    if addNoteTrim != "" {
                        
                        //if there is already a note
                        if isEditingNote == true {
                            
                            result.insert(addNoteTrim, at: i)
                            
                            //if there is not already a note
                        }else if isEditingNote == false {
                            
                            result.insert(num + " " + "{" + addNoteTrim + "}", at: i)
                        }

                        
                    }else {
                        
                        result.insert(num, at: i)
                    }
                }
            }
            
            rowToSelectTxt.text = ""
            
            addNoteTxt.text = ""
            
            clearAll()
            
            updateArray()
            
            addNoteBtn.isEnabled = true
            
        
    }
    

    //check if line to edit exists and if a note already exists
    func editNote() {
        
        row = rowToSelectTxt.text!
        
        if result.count > 0 && result.count >= Int(row) {
            
            for i in 0 ..< result.count {
                
                if i == Int(row) {
                    
                    let resultReturn = result[i]
                    
                    //if there is a note
                    if resultReturn.contains("{") {
                        
                        isEditingNote = true
                        
                        addNoteTxt.text = resultReturn
                    
                    }else {
                        
                        //if there isn't a note
                        isEditingNote = false
                        
                        let x = resultReturn.characters.count
                        
                        let resultString = NSString(string: resultReturn)
                        
                        addNoteTxt.text = resultString.substring(from: x)
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
            
            let app = UIApplication.shared.delegate as! AppDelegate
            
            let context = app.managedObjectContext
            
            let entity = NSEntityDescription.entity(forEntityName: "Calculation", in: context)
            
            let calc = Calculation(entity: entity!, insertInto: context)
            
            let tempArr = result.joined(separator: "\n")
            
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
        
        let app = UIApplication.shared.delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Calculation")
        
        do {
            
            let resultData = try context.fetch(fetchRequest)
            
            
            for res in resultData {
                
                let tempArr = res.value(forKey: "calcArray")! as! String
                
                let tempArrSeparated = tempArr.components(separatedBy: "\n")
                
                result = tempArrSeparated
                
                updateSavedArray(result)
                
            }
            
        }catch let err as NSError {
            
            print(err.debugDescription)
        }

        
    }
    
    
    
    func clearSavedData() {
        
        
        let app = UIApplication.shared.delegate as! AppDelegate
        
        let context = app.managedObjectContext
        
        let coord = app.persistentStoreCoordinator
        
        let fetchRequest = NSFetchRequest(entityName: "Calculation")
        
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        do {
            
            try coord.execute(deleteRequest, with: context)
            
        }catch let err as NSError {
            
            print(err.debugDescription)
        }
        
        
        
    }
    
    
    func clearAll() {
        
        arrOutput = ""
        
        mainResultArr.removeAll()
        
    }
    
    
    
    func isNegative(_ op: Operation) {
            
                if runningNum != "" {
                    
                    runningNum = String(Double(runningNum)! - (Double(runningNum)! * 2.0))
                    
                    outputTxt.text = runningNum
                
            }
        }
    
    
    func processOperation(_ op: Operation) {
        
        
        if currentOperation != Operation.Empty {
            
            if runningNum != "" {
                
                rightValString = runningNum
                
                runningNum = ""
                
                if currentOperation == Operation.Add {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! + Double(rightValString)!
                    
                    resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                    
                    result.append(leftValString + " + ")
                    
                }else if currentOperation == Operation.Subtract {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! - Double(rightValString)!
                    
                    resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                    
                    result.append(leftValString + " - ")
                    
                    
                }else if currentOperation == Operation.Multiply {
                    
                    clearAll()
                    
                    let resultCalcTemp = Double(leftValString)! * Double(rightValString)!
                    
                    resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                    
                    result.append(leftValString + " x ")
                    
                    
                }else if currentOperation == Operation.Divide {
                    
                    if rightValString == "0.0" {
                        
                        clearAll()
                        
                        outputTxt.text = "0.0"
                        
                    }else {
                        
                        clearAll()
                        
                        let resultCalcTemp = Double(leftValString)! / Double(rightValString)!
                        
                        resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                        
                        result.append(leftValString + " / ")
                        
                    }
                    
                }else if currentOperation == Operation.Percent {
                    
                    
                    clearAll()
          
                    if leftValString != "" && rightValString != "" {
                        
                        let percentage = Double(rightValString)! / 100
                        
                        let percentCalcTemp = Double(leftValString)! * Double(percentage)
                        
                        let percentCalc = Double(round(1000000*percentCalcTemp)/1000000)
                        
                        if sign == "+" {
                            
                            let resultCalcTemp = Double(leftValString)! + Double(percentCalc)
                            
                            resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                            
                        }else if sign == "-" {
                            
                            let resultCalcTemp = Double(leftValString)! - Double(percentCalc)
                            
                            resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                            
                        }else if sign == "x" {
                            
                            resultCalc = percentCalc
                            
                        }else if sign == "/" {
                            
                            let resultCalcTemp = Double(leftValString)! / Double(percentCalc)
                            
                            resultCalc = Double(round(1000000*resultCalcTemp)/1000000)
                            
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
        
        for (index,element) in mainResultArr.enumerated() {
            
            arrOutput += String(index) + " | " + element + "\n"
        }
        
        
        
        outputTxt.text = arrOutput
        
    }
    
    
    func updateSavedArray(_ arr: [String]) {
        
        for i in arr {
            
            mainResultArr.append(i)
        }
        
        for (index, element) in mainResultArr.enumerated() {
            
            arrOutput += String(index) + " | " + element + "\n"
        }
        
        let runTemp = mainResultArr.last!
        
        let runTempTrim = runTemp.trimmingCharacters(in: CharacterSet.whitespaces)
        
        if let x = runTempTrim.between("=", "{") {
            
            let xTemp = x.trimmingCharacters(in: CharacterSet.whitespaces)
            
            runningNum = xTemp
        }else {
            
            let xTemp = (runTempTrim as NSString).substring(from: 2)
            runningNum = xTemp
            }
        
        outputTxt.text = arrOutput
        
    }
    

    


    //MAIL FUNCTION
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    
    //KEYBOARD CONTROLS
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        (rowToSelectTxt).resignFirstResponder()
        (addNoteTxt).resignFirstResponder()
        
        return true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let defaults = UserDefaults.standard
        
        let hasLaunched = defaults.value(forKey: "hasLaunchedBefore") as? Bool
        
        let launchDate = defaults.value(forKey: "firstLaunchDate") as! Date
        
        let timeSinceLaunch = Date().timeIntervalSince(launchDate)
        
        let rated = defaults.value(forKey: "haveRated") as? Bool
        
        if  hasLaunched == true && timeSinceLaunch >= 1296000.0 && (rated == nil || rated == false) {
            
            let alert = UIAlertController(title: "Finding +3 Useful?", message: "If you are finding +3 useful, we hope you won't mind taking a moment to give us a rating and review in the App Store. We love hearing from you! If you have any comments or suggestions please drop us a line using the Feedback button below. As always we appreciate your support.", preferredStyle: .alert)
            
            
            alert.addAction(UIAlertAction(title: "Rate Us", style: .default, handler: { (action: UIAlertAction) -> Void in
                
                UIApplication.shared.openURL(Foundation.URL(string: "https://itunes.apple.com/us/app/+3/id1095135903?mt=8")!)
                alert.dismiss(animated: true, completion: nil)
                defaults.set(true, forKey: "haveRated")
                
            }))
            
            alert.addAction(UIAlertAction(title: "Maybe Later", style: .default, handler: { (action: UIAlertAction) -> Void in
                
                alert.dismiss(animated: true, completion: nil)
                defaults.set(false, forKey: "haveRated")
                defaults.set(Date(), forKey: "firstLaunchDate")
                
            }))
            
            alert.addAction(UIAlertAction(title: "Feedback", style: .default, handler: { (action: UIAlertAction) -> Void in
                
                let email = "plus3app@incubo.ca"
                let url = Foundation.URL(string: "mailto:\(email)")!
                UIApplication.shared.openURL(url)
            }))
            
            alert.addAction(UIAlertAction(title: "No Thanks", style: .default, handler: { (action: UIAlertAction) -> Void in
                
                alert.dismiss(animated: true, completion: nil)
                defaults.set(true, forKey: "haveRated")
                
            }))
            
            
            self.present(alert, animated: true, completion: {
                
                alert.view.tintColor = ALERT_COLOR
            })
            alert.view.tintColor = ALERT_COLOR
            
        }else {
            
            return
        }

    }
    
    
      override func viewDidLoad() {
        super.viewDidLoad()
        
        clearBtn.isSelected = true
        clearBtn.setTitle("CE", for: UIControlState())
        clearBtn.setTitle("C", for: .selected)
        clearBtn.setTitleColor(UIColor.white, for: .selected)
        cancelBtn.isEnabled = false
        cancelBtn.setTitleColor(UIColor.darkGray, for: .disabled)
        rowToSelectTxt.isEnabled = false
        
        self.addNoteTxt.delegate = self
        self.rowToSelectTxt.delegate = self
        self.outputTxt.delegate = self
        
        let screenSize = UIScreen.main.bounds
        
        if screenSize.height == 480 {
            
            outputTxtHeight.constant = 125
            
        }else if screenSize.height == 568 {
            
            outputTxtHeight.constant = 175
            
        }else if screenSize.height == 667 {
            
            outputTxtHeight.constant = 225
            
        }else if screenSize.height == 736 {
            
            outputTxtHeight.constant = 294
            
        }else if screenSize.height == 1366 {
            
            outputTxtHeight.constant = 550
            
        }else {
            
            outputTxtHeight.constant = 375
        }
        
        
        fetchArr()
        
        equalsBtn.isEnabled = false
        
        }
    
    }

