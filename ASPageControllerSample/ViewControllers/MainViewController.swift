//
//  MainViewController.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/18/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

enum ViewIndex: Int {
  case firstIndex = 0
  case secondIndex = 1
  case thirdIndex = 2
}

class MainViewController: UIViewController {
  
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var navigationView: UIView!
  @IBOutlet weak var btnFirst: UINavigationButton!
  @IBOutlet weak var btnSecond: UINavigationButton!
  @IBOutlet weak var btnThird: UINavigationButton!
  
  @IBAction func onFirst(sender: AnyObject) {
    loadPadeItem(.firstIndex)
  }
  
  @IBAction func onSecond(sender: AnyObject) {
    loadPadeItem(.secondIndex)
  }
  
  
  @IBAction func onThird(sender: AnyObject) {
    loadPadeItem(.thirdIndex)
  }
  
  var pageViewController: PageViewController? {
    didSet {
      pageViewController?.pageViewControllerDelegate = self
    }
  }
  
  private var currentViewIndex: ViewIndex = .firstIndex

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //loadPadeItem(currentViewIndex)//does not work
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let pageViewController = segue.destinationViewController as? PageViewController {
      self.pageViewController = pageViewController
    }
  }
  
  func updateNavigationButtons() {
    
    switch(currentViewIndex) {
    case .firstIndex:
      btnFirst.isSelectedState = true
      btnSecond.isSelectedState = false
      btnThird.isSelectedState = false
    case .secondIndex:
      btnFirst.isSelectedState = false
      btnSecond.isSelectedState = true
      btnThird.isSelectedState = false
    case .thirdIndex:
      btnFirst.isSelectedState = false
      btnSecond.isSelectedState = false
      btnThird.isSelectedState = true
    }
  }
  
  func loadPadeItem(index: ViewIndex) {
    currentViewIndex = index
    pageViewController!.scrollToViewController(index: currentViewIndex.rawValue)
    updateNavigationButtons()
  }

}

extension MainViewController: PageViewControllerDelegate {
  
  func pageViewController(tutorialPageViewController: PageViewController,
    didUpdatePageCount count: Int) {
      // pageControl.numberOfPages = count
  }
  
  func pageViewController(tutorialPageViewController: PageViewController,
    didUpdatePageIndex index: Int) {
      self.currentViewIndex = ViewIndex(rawValue: index)!
      self.updateNavigationButtons()
  }
}




