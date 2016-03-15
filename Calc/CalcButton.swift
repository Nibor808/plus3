//
//  CalcButton.swift
//  Calc
//
//  Created by Robin Erickson on 2016-02-25.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation
import UIKit

class CalcButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)!
        self.layer.borderWidth = 0.5
        self.backgroundColor = UIColor(red: 0.0/255, green: 153.0/255, blue: 204.0/255, alpha: 1.0)
        
    }
    
}
