//
//  ViewController.swift
//  BullsEye
//
//  Created by 孙起 on 2019/5/9.
//  Copyright © 2019 Jess Aarons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func showAlert(){
        let message = "The value of the slider is:\(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
}

