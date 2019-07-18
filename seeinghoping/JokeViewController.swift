//
//  JokeViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/18/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {

        let jokes = ["Random Joke": "This is a random joke!"]
    let jokeOptions = ["I asked my French friend if she likes to play video games. She said, “Wii.", "The machine at the coin factory just suddenly stopped working, with no explanation. It doesn’t make any cents!", "I was going to make myself a belt made out of watches, but then I realized it would be a waist of time.","A man sued an airline company after it lost his luggage. Sadly, he lost his case.","Did you hear about the man who was accidentally buried alive?  It was a grave mistake.", "6:30 is the best time on a clock… hands down.", "I hate how funerals are always at 9 a.m.  I’m not really a mourning person.", "I lost my job at the bank on my very first day.  A woman asked me to check her balance, so I pushed her over.", "Did you hear about the guy who got hit in the head with a can of soda? He was lucky it was a soft drink.","I saw an ad for burial plots, and thought to myself this is the last thing I need.", "What is Forrest Gump’s email password? 1Forrest1"]
        
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedButton = sender.titleLabel!.text
        
//        let messageOptions = jokeOptions [jokes[selectedButton!]!]!.count
        let jokeMessage = jokeOptions[Int.random(in:0...jokeOptions.count-1)]
        
        let jokeAlert = UIAlertController (title: "Here's a joke!", message: jokeMessage, preferredStyle: UIAlertController.Style.alert)
        
        jokeAlert.addAction(UIAlertAction(title: "LOL!", style: UIAlertAction.Style.default, handler: nil))
        
        present(jokeAlert, animated: true, completion: nil)
        
    }
        // Add the actions
        
        
        // Present the controller
        
        
        
        
        
    
    @IBOutlet weak var JokeGenerator: UILabel!
    
        //let jokeMessageArray = jokeMessages[jokes[selectedJoke!]!]
       // var jokeMessage = jokeMessageArray!.randomElement()!
        //let alertController = UIAlertController(title: selectedJoke, message: jokeMessages, preferredStyle: UIAlertController.Style.alert) alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))present(alertController, animated: true, completion: nil)
    


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

