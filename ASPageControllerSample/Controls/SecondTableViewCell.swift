//
//  SecondTableViewCell.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/19/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

class SecondTableViewCell: UITableViewCell {
  
  let images = ["profile1.png","profile2.png","profile3.png","profile4.png","profile5.png","profile6.png","profile7.png","profile8.png"]
  
  @IBOutlet weak var iImage: UIImageView!

  override func awakeFromNib() {
    super.awakeFromNib()
    
    initControl()
  }
  
  private func initControl() {

  }
  
  func setContent() {
//     iImage.layer.cornerRadius = 5
//    iImage.backgroundColor = UIColor.greenColor()
    iImage.image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count - 1)))])

     backgroundColor = UIColor(named: UIColor.AppColor.ConiferApprox)
  }
  

}