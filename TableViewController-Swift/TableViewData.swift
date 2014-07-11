//
//  TableViewData.swift
//  TableViewController-Swift
//
//  Created by Simone Ferrini on 11/07/14.
//  Copyright (c) 2014 sferrini. All rights reserved.
//

import UIKit

class MyTableData: NSObject, UITableViewDataSource {
    
    let cellIdentifier = "cellIdentifier"
    let sectionTitle = ["Happy faces", "Sad faces"]
    let itemList = [
        ["😊", "😉", "😄", "😝", "😜"],
        ["😔", "😞", "😭"]
    ]
    
    func item(#indexPath: NSIndexPath!) -> String {
        return itemList[indexPath.section][indexPath.row]
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return itemList.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList[section].count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return sectionTitle[section]
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        cell.text = self.item(indexPath: indexPath)
        return cell
    }
}