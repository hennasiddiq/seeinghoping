//
//  WalkViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class WalkViewController: UIViewController {
    var initialvalue = 5
    var timer = Timer ()
    var secondsRemaining = 0
    var timerOn = false
    var pause = false
    @objc func fireTimer() {
        if (secondsRemaining != 0) {
            secondsRemaining -= 1
            var minutes = secondsRemaining / 60 % 60
            label.text = "\(String(minutes)):\(String(secondsRemaining % 60))"
        } else {
            label.text = "YOU'RE DONE"
            startOutlet.isHidden = false
            timer.invalidate()
            timerOn = false
        }
    }
    
   
    @IBAction func start(_ sender: Any) {
        timerOn = true
        secondsRemaining = initialvalue * 60
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        startOutlet.isHidden = true
    }

    @IBOutlet weak var startOutlet: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
 
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
        startOutlet.isHidden = false
        timerOn = false
    }


    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        if timerOn == false {
            label.text = "\(currentValue) MINUTES"
            initialvalue = currentValue
    
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
