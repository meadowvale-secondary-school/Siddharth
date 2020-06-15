//
//  ViewController.swift
//  Light
//
//  Created by Student on 2020-05-03.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


   
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
        }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    
    
 }

}
