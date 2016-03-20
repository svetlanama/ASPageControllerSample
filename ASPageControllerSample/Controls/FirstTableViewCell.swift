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
  
  let news = ["Majority Threshold", "This weekend to considering ....", "Energy solutions", "Waste and recycling", "Water solutions", "Halthcare", "Technology news...", "BBC", "Last few years ..."]
  @IBOutlet weak var txtMessage: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
    
    initControl()
  }
  
  private func initControl() {
    
  }
  
  func setContent() {
    txtMessage.text = news[Int(arc4random_uniform(UInt32(news.count - 1)))]
    backgroundColor = UIColor(named: UIColor.AppColor.RegentStBlueApprox)
  }
  

}