//
//  DetailViewController.swift
//  TableViewController-Swift
//
//  Created by Simone Ferrini on 11/07/14.
//  Copyright (c) 2014 sferrini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var label = UILabel();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.frame = CGRectMake(0, 0, 200, 21)
        label.center = self.view.center
        label.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
