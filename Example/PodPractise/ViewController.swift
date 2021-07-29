//
//  ViewController.swift
//  PodPractise
//
//  Created by suryaspidy on 07/29/2021.
//  Copyright (c) 2021 suryaspidy. All rights reserved.
//

import UIKit
import PodPractise

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let n = Logger()
        n.printLog()
        
        let tableViewPod = FunForTableView(frame: self.view.frame, content: ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"], animation: .hideAndSeek)
        self.view.addSubview(tableViewPod.createTableView())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

