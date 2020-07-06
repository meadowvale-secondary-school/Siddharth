//
//  SecondViewController.swift
//  OrderOfEvents (3.8)
//
//  Created by Student on 2020-06-11.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var updateLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = updateLabel.text {
            updateLabel.text = ("\(existingText)\nEvent number \(eventNumber) was viewDidLoad.")
            eventNumber += 1
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let existingText = updateLabel.text {
        updateLabel.text = ("\(existingText)\nEvent number \(eventNumber) was viewDidAppear.")
            eventNumber += 1
       }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = updateLabel.text {
        updateLabel.text = ("\(existingText)\nEvent number \(eventNumber) was viewWillAppear.")
            eventNumber += 1
        
      }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        if let existingText = updateLabel.text {
        updateLabel.text = ("\(existingText)\nEvent number \(eventNumber) was viewDidDisappear.")
            eventNumber += 1
     }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = updateLabel.text {
        updateLabel.text = ("\(existingText)\nEvent number \(eventNumber) was viewWillDisappear.")
            eventNumber += 1
     }
    }

   

}

