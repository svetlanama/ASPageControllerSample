//
//  UIColor+PC.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/19/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
  
  
  enum AppColor : Int {
    case RegentStBlueApprox = 0x9fbfe6
    case ConiferApprox = 0xb1e45f
    case VividTangerineApprox = 0xff927d

  }
  
  convenience init(rgbValue: Int) {
    let red   = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
    let green = CGFloat((rgbValue & 0xFF00) >> 8) / 255.0
    let blue  = CGFloat(rgbValue & 0xFF) / 255.0
    
    self.init(red: red, green: green, blue: blue, alpha: 1.0)
  }
  
  convenience init(named name: AppColor) {
    self.init(rgbValue: name.rawValue)
  }

  
}