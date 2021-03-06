//
//  SecondViewController.swift
//  ASPageControllerSample
//
//  Created by Svitlana Moiseyenko on 3/18/16.
//  Copyright © 2016 Svitlana Moiseyenko. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var table: UITableView!
  var refreshControl:UIRefreshControl!
  let cellIdentifier = "SecondCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initTable()
  }
  
  private func initTable() {
    table.reloadData()
    
    refreshControl = UIRefreshControl()
    refreshControl.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
    table.addSubview(refreshControl)
    table.userInteractionEnabled = true
  }
  
  func refresh() {
    table.reloadData()
    self.refreshControl.endRefreshing()
  }
  
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return 75
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier)! as! SecondTableViewCell
    cell.setContent()
    return cell
  }
}

