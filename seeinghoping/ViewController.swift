//
//  ViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/17/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
//    let ac = UIAlertController(title: "Enter answer", message: nil, preferredStyle: .alert)
//    ac.addTextField()
//
//    let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
//        let answer = ac.textFields![0]
//        // do something interesting with "answer" here
//    }
//
//    ac.addAction(submitAction)
//    present(alert, animated: true)
//
//    var alertController = UIAlertController(title: "What's your name?", message: nil, preferredStyle: UIAlertController.Style.alert)
//    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//
    @IBAction func relaxButton(_ sender: Any) {
    }
    
    
    @IBAction func healthButton(_ sender: Any) {
    }
    
    @IBAction func inspireButton(_ sender: Any) {
    }
    
    
    
    
    
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        if appDelegate.name == "" {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
             let store = StoreName(entity: StoreName.entity(), insertInto: context)
            if store.name == "\"\"" {
                let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                
                alert.addTextField(configurationHandler: { textField in textField.placeholder = "Input your name here..."
                })
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    
                                if let name = alert.textFields?.first?.text {
                                    store.name = name
                                    self.nameLabel.text = store.name
//                                    print("Welcome: \(name)")
//                                    print(appDelegate.name)
                                }
                }))
                
                self.present(alert, animated: true)
            }
            else {
                self.nameLabel.text = store.name
            }
                
        }
            
//        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
//
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//
//        alert.addTextField(configurationHandler: { textField in textField.placeholder = "Input your name here..."
//        })
//
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
//
////            if let name = alert.textFields?.first?.text {
////                appDelegate.name = name
////                self.nameLabel.text = appDelegate.name
////                print("Welcome: \(name)")
////                print(appDelegate.name)
////            }
//        }))
//
//        self.present(alert, animated: true)
//        }
//
//        nameLabel.text = appDelegate.name
        
    }


}

