//
//  ViewController.swift
//  Two Buttons
//
//  Created by Student on 2020-05-21.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

        
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        
        label.text = ""
        textField.text = ""
    }
    

}

