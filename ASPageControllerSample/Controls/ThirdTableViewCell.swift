//
//  ThirdTableViewCell.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/19/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

class ThirdTableViewCell: UITableViewCell {
  
  @IBOutlet weak var iImage: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    initControl()
  }
  
  private func initControl() {
    
  }
  
  func setContent() {
    iImage.backgroundColor = UIColor.grayColor()
    backgroundColor = UIColor(named: UIColor.AppColor.VividTangerineApprox)
  }
  

  
}