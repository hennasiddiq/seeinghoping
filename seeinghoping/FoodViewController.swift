//
//  FoodViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/19/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import AVFoundation
import WebKit

class FoodViewController: UIViewController {
    
    @IBOutlet weak var video1: WKWebView!
    @IBOutlet weak var video2: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let youtubeURL = URL(string: "https://youtu.be/-x2E7T3-r7k")
            else {
                return
        }
        video1.load(URLRequest(url: youtubeURL))
        
        guard let youtubeURL2 = URL(string: "https://youtu.be/dsJtgmAhFF4")
            else {
                return
        }
        video2.load(URLRequest(url: youtubeURL2))
        
        
        
        
        // Do any additional setup after loading the view.
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
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


