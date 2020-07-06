//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Student on 2020-06-08.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func yellowButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "segueToYellow", sender: nil)
        }
    }
    
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "segueToGreen", sender: nil)
        }
    }
    
}

