//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Student on 2020-06-08.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
    
    @IBAction func  unwindToStart(unwindSegue: UIStoryboardSegue){
        
    }
    
    

    
     
}

