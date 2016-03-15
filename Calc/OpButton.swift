//
//  OpButton.swift
//  Calc
//
//  Created by Robin Erickson on 2016-02-25.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation
import UIKit

class OpButton: UIButton {
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)!
        self.layer.borderWidth = 0.5
        self.backgroundColor = UIColor(red: 243.0/255, green: 132.0/255, blue: 42.0/255, alpha: 1.0)
            
    }
    
}
