//
//  ViewController.swift
//  TapWar
//
//  Created by Kevin Bui on 5/19/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    @IBOutlet weak var peachLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    @IBOutlet weak var endScene: UIButton!

    @IBOutlet weak var TopEndLabel: UILabel!
    @IBOutlet weak var BottomEndLabel: UILabel!
    
    
    var score = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        score = 0
        
        peachLabel.text = "\(score)"
        purpleLabel.text = "\(score)"
        
        peachLabel.transform = CGAffineTransformMakeRotation(3.14) // Rotates label 180degrees to face user
        
        endScene.hidden = true // As soon as view loads, end scene will be hidden
        TopEndLabel.hidden = true // View loads, label hidden
        BottomEndLabel.hidden = true // View loads, label hidden
        
        TopEndLabel.transform = CGAffineTransformMakeRotation(3.14)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func peachButtonAction(sender: AnyObject) {
        
        score++
        peachLabel.text = "\(score)"
        purpleLabel.text = "\(score)"
        
        testScore()
    }
    
    @IBAction func purpleButtonAction(sender: AnyObject) {
        
        score--
        peachLabel.text = "\(score)"
        purpleLabel.text = "\(score)"
        
        testScore()
    }
    
    func testScore() {
        
        if score >= 10 {
            
            endScene.hidden = false
            TopEndLabel.hidden = false
            BottomEndLabel.hidden = false
            
            TopEndLabel.text = "Winner"
            BottomEndLabel.text = "Loser"
            
        } else if score <= 10 {
            
            endScene.hidden = false
            TopEndLabel.hidden = false
            BottomEndLabel.hidden = false
            
            TopEndLabel.text = "Loser"
            BottomEndLabel.text = "Winner"
        }
    }

    @IBAction func EndSceneAction(sender: AnyObject) {
        
        endScene.hidden = true
        TopEndLabel.hidden = true
        BottomEndLabel.hidden = true
        
        score = 0 // Sets score = 0
        peachLabel.text = "\(score)"
        purpleLabel.text = "\(score)"
    }

}

