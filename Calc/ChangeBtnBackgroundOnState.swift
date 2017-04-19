//
//  ChangeBtnBackgroundOnState.swift
//  Calc
//
//  Created by Robin Erickson on 2016-03-03.
//  Copyright © 2016 Incubo. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func setBackgroundColor(_ color: UIColor, forState: UIControlState) {
        
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext().setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext().fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.setBackgroundImage(colorImage, for: forState)
    }}
