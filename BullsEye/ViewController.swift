//
//  ViewController.swift
//  BullsEye
//
//  Created by 孙起 on 2019/5/9.
//  Copyright © 2019 Jess Aarons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello, World", message: "This is my first app!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMover(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
    }
}

