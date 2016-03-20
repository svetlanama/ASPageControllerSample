//
//  FirstTableViewCell.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/19/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

class FirstTableViewCell: UITableViewCell {
  

  @IBOutlet weak var txtMessage: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    
    initControl()
  }
  
  private func initControl() {
    
  }
  
  func setContent() {
    txtMessage.text = "first cell message"
    backgroundColor = UIColor(named: UIColor.AppColor.RegentStBlueApprox)
  }
  

}