//
//  ViewController.swift
//  IBBasics
//
//  Created by Student on 2020-05-01.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitleColor(.red, for: .normal)
    }

    @IBOutlet var myButton: UIButton!
    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    
}

