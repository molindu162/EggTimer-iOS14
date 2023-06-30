//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hardness : [String : Int] = ["Soft": 5, "Medium": 10, "Hard": 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        var title :String = sender.currentTitle!
        switch title{
        case "Soft":
            print(hardness[title]!)
        
        case "Medium":
            print(hardness[title]!)

        case "Hard":
            print(hardness[title]!)

        default:
            print("Error")
        }
    }
    

}
