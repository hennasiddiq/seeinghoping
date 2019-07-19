//
//  ResourcesViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/19/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ResourcesViewController: UIViewController {

    
    @IBAction func callNIMH(_ sender: Any) {
    guard let number = URL(string: "tel://" + "1-866-615-6464")
            else { return }
        UIApplication.shared.open(number)
    }
    
    
    @IBAction func callADAA(_ sender: Any) {
        guard let number = URL(string: "tel://" + "1-240-485-1001")
            else { return }
        UIApplication.shared.open(number)
        
    }
    
    
    @IBAction func callNAMI(_ sender: Any) {
        guard let number = URL(string: "tel://" + "1-800-950-6264")
            else { return }
        UIApplication.shared.open(number)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
