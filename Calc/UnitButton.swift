//
//  UnitButton.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-02.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation
import UIKit

class UnitButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)!
        
        self.setTitleColor(UIColor.white, for: .selected)
      
        self.setBackgroundColor(UIColor.lightGray, forState: .selected)
    
    }
    
    
        
}
