//
//  ViewControllerTwo.swift
//  LifeCycle (3.8)
//
//  Created by Student on 2020-06-11.
//  Copyright © 2020 Siddharth. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewControllerTwo - View Did Load")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewControllerTwo - View Did Appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewControllerTwo - View Will Appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewControllerTwo - View Did Disappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewControllerTwo - View Will Disappear")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
