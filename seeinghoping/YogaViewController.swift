//
//  YogaViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import WebKit

class YogaViewController: UIViewController {
    @IBOutlet weak var videoSecond: WKWebView!
    @IBOutlet weak var video: WKWebView!
    let videoURL = URL(string: "https://www.youtube.com/watch?v=4C-gxOE0j7s")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let youtubeURL = URL(string: "https://www.youtube.com/watch?v=4C-gxOE0j7s")
            else {
                return
        }
        video.load(URLRequest(url: youtubeURL))
        
        
        
        
        guard let youtubeURL2 = URL(string: "https://www.youtube.com/watch?v=VpW33Celubg")
            else {
                return
        }
        videoSecond.load(URLRequest(url: youtubeURL2))
        
        
        
        
        
        
        
        
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
