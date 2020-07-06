//
//  ViewController.swift
//  LifeCycle (3.8)
//
//  Created by Student on 2020-06-11.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewControllerOne - View Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewControllerOne - View Did Appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewControllerOne - View Will Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewControllerOne - View Did Disappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewControllerOne - View Will Disappear")
    }

}

 
