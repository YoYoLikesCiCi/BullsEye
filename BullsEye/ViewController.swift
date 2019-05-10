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
    var targetValut = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        targetValut = Int.random(in: 1...100)  //产生随机数
        
        currentValue = lroundf(slider.value)
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var slider:UISlider!
    
    
    //显示当前f分数
    @IBAction func showAlert(){
        let message = "The value of the slider is:\(currentValue)" + "\nThe target value is \(targetValut)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    //事件slider变化时
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
}

