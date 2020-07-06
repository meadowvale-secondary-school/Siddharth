//
//  ViewController.swift
//  Login
//
//  Created by Student on 2020-06-08.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUsername{
            segue.destination.navigationItem.title = "Forgot User name"
        }else{
            segue.destination.navigationItem.title = usernameTextfield.text
        }
    }
    
    
    @IBAction func forgotUsernameTapped(_ sender: Any) {
        performSegue(withIdentifier: "segueToNextScreen", sender: forgotUsername)
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "segueToNextScreen", sender: forgotPassword)
    }
    
}

