//
//  SleepViewController.swift
//  seeinghoping
//
//  Created by Apple on 7/19/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import AVFoundation

class SleepViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func playWave(_ sender: Any) {
        let waveSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Waves-mp3", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: waveSound as URL)
            audioPlayer.prepareToPlay()
        } catch {
            print("Playing Waves")
        }
        audioPlayer.play()
    }
    
    @IBAction func playForest(_ sender: Any) {
        let forestSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Rainforest-sounds", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: forestSound as URL)
            audioPlayer.prepareToPlay()
        } catch {
            print("Playing Forest")
        }
        audioPlayer.play()
    }
    
    @IBAction func playRain(_ sender: Any) {
        let rainSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "rain-01", ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: rainSound as URL)
            audioPlayer.prepareToPlay()
        } catch {
            print("Playing Rain")
        }
        audioPlayer.play()
    }
    
    @IBAction func stopWaves(_ sender: Any) {
         audioPlayer.stop()
    }
    
    @IBAction func stopForest(_ sender: Any) {
         audioPlayer.stop()
    }
    
    @IBAction func stopRain(_ sender: Any) {
         audioPlayer.stop()
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
