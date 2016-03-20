//
//  NavigationButton.swift
//  Cape
//
//  Created by Svitlana Moiseyenko on 3/19/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

enum ButtonType: Int {
  case History = 0
  case Posts
  case Articles

  func getImage() -> UIImage {
    switch self {
    case .History:
      return UIImage(named: "ProfileWhite")!
    case .Posts:
      return UIImage(named: "TopRadarWhite")!
    case .Articles:
      return UIImage(named: "NewsWhite")!
    }
  }
  
  func getHighlightedImage() -> UIImage {
    switch self {
    case .History:
      return UIImage(named: "ProfileRed" )!
    case .Posts:
      return UIImage(named: "TopRadar")!
    case .Articles:
      return UIImage(named: "NewsRed")!
    }
  }
}


final class UINavigationButton: UIButton {
  
  var type: ButtonType = .Posts {
    didSet {
      updateControlsStates()
    }
  }
  
  var isSelectedState: Bool = false {
    didSet {
      updateControlsStates()
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    initControl()
    updateControlsStates()
    
  }
  
  deinit {
  }
  
  private func initControl() {
    //addTarget(self, action: "onClick:", forControlEvents: UIControlEvents.TouchUpInside)
  }
  
  private func updateControlsStates() {

      //layer.borderColor = UIColor.redColor().CGColor
      //layer.borderWidth = isSelectedState ? 0.5 : 0
    
    backgroundColor = !isSelectedState ? backgroundColor?.colorWithAlphaComponent(0.5) : backgroundColor?.colorWithAlphaComponent(1)
   

//    if isSelectedState {
//      setImage(type.getHighlightedImage(), forState: .Normal)
//    } else {
//      setImage(type.getImage(), forState: .Normal)
//    }
  }
  
  
  
  
  
  
}