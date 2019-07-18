//
//  BreatheViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import WebKit

class BreatheViewController: UIViewController {
    
    @IBOutlet weak var video: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=N02BnHwS5FE")
            else {
                return
        }
        video.load(URLRequest(url: youtubeURL))
    



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

}
