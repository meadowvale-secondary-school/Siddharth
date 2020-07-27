//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Student on 2020-04-08.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        // Do any additional setup after loading the view.
    }
    let elementList = [ "Carbon", "Gold", "Chlorine", "Sodium" ]
    
    var currentElementIndex = 0
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    @IBAction func ShowAnswer(_ sender: Any) {
        AnswerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func GoToNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    func updateElement() {
        AnswerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        ImageView.image = image
        
    }
    
    
}

