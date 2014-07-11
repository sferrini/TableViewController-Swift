//
//  TableViewController.swift
//  TableViewController-Swift
//
//  Created by Simone Ferrini on 11/07/14.
//  Copyright (c) 2014 sferrini. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate {
    
    let tableView = UITableView(frame:CGRectZero, style:.Plain)
    let tableData = MyTableData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "TableViewController"
        
        tableView.frame = self.view.bounds
        tableView.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        tableView.delegate = self
        tableView.dataSource = tableData
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: tableData.cellIdentifier)
        tableView.separatorColor = UIColor.blackColor()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        
        self.view.addSubview(tableView)
    }
    
    /*
     *  UITableViewDelegate
     */
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated:true)
        
        let detailViewController = DetailViewController()
        detailViewController.title = "DetailViewController"
        detailViewController.view.backgroundColor = UIColor.whiteColor()
        detailViewController.label.text = tableData.item(indexPath: indexPath)
        self.navigationController.pushViewController(detailViewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

