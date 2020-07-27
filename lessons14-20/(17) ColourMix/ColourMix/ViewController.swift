//
//  ViewController.swift
//  ColourMix
//
//  Created by Student on 2020-03-22.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        colourView.layer.borderWidth = 5
        colourView.layer.cornerRadius = 20
        colourView.layer.borderColor = UIColor.black.cgColor
        updateColour()
        updateControls()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var colourView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            updateColour()
            updateControls()
        } else {
            updateColour()
            updateControls()
        }
    }
    
    func updateColour() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let colour = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colourView.backgroundColor = colour
    }
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColour()
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        redSlider.value = 1.0
        greenSlider.value = 1.0
        blueSlider.value = 1.0
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        
        updateControls()
        
        updateColour()
    }
    
}

