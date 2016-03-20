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
  
  let images = ["image1.jpg","image2.jpeg", "image3.jpeg", "image4.jpeg", "image5.jpeg","image6.jpg"]
  @IBOutlet weak var iImage: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    initControl()
  }
  
  private func initControl() {
    
  }
  
  func setContent() {
    //iImage.backgroundColor = UIColor.grayColor()
     iImage.image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count - 1)))])
    backgroundColor = UIColor(named: UIColor.AppColor.VividTangerineApprox)
  }
  

  
}