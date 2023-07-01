//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countdownLabel: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    let hardness : [String : Int] = ["Soft": 300, "Medium": 600, "Hard": 720]
    
    var timer: Timer?
    var totalTime = 60 // Total time in seconds
    var total : Float = 0.0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        var title :String = sender.currentTitle!
        switch title{
        case "Soft":
            totalTime = hardness[title]!
            total = Float(hardness[title]!)
            startTimer()
            print(hardness[title]!)
        
        case "Medium":
            totalTime = hardness[title]!
            total = Float(hardness[title]!)
            startTimer()
            print(hardness[title]!)

        case "Hard":
            totalTime = hardness[title]!
            total = Float(hardness[title]!)
            startTimer()
            print(hardness[title]!)

        default:
            print("Error")
        }
    }
    
    
    func startTimer() {
            // Invalidate the previous timer, if any
            timer?.invalidate()
            
            // Start a new timer
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        }
        
        @objc func updateTimer() {
            if totalTime > 0 {
                totalTime -= 1
                ProgressBar.progress = Float(1.0 - Float(totalTime)/total)
                let minutes = totalTime / 60
                let seconds = totalTime % 60
                countdownLabel.text = String(format: "%02d:%02d", minutes, seconds)
            } else {
                timer?.invalidate()
                countdownLabel.text = "Finished!"
            }
        }
    

}
