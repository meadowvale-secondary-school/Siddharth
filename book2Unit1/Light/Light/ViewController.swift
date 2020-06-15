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


    
    @IBOutlet weak var lightButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
        }
    
    func updateUI() {
 //       lightOn.toggle()
        if lightOn{
            view.backgroundColor = .white
            lightButton.setTitle("OFF", for: .normal)
            
        } else{
            view.backgroundColor = .black
            lightButton.setTitle("ON", for: .normal)
    }
 }
    
    
}

