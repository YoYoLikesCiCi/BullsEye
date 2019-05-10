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
    var targetValue = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        startNewRound()
        // Do any additional setup after loading the view.
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels(){
        targetLabel.text = String(targetValue)
    }
    
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var targetLabel:UILabel!
    
    //显示当前分数
    @IBAction func showAlert(){
        let message = "The value of the slider is:\(currentValue)" + "\nThe target value is \(targetValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    
    //事件slider变化时
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
    }
}

