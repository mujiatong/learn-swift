//
//  ViewController.swift
//  Dicee-iOS13-Alex
//
//  Created by Alex on 2020/2/27.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // IBOutlet allows me to reference to the UI element
    @IBOutlet weak var leftDiceImageView1: UIImageView!
    @IBOutlet weak var rightDiceImageView2: UIImageView!
    
    var  leftDiceNumber = 1
    var  rightDiceNumber = 3
    var  diceArray = [ #imageLiteral(resourceName: "DiceeOne"), #imageLiteral(resourceName: "DiceeTwo"),#imageLiteral(resourceName: "DiceeThree"),#imageLiteral(resourceName: "DiceeFour"),#imageLiteral(resourceName: "DiceeFive"),#imageLiteral(resourceName: "DiceeSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Image Literal 访问图片资源
        // who.what = value
        leftDiceImageView1.image = #imageLiteral(resourceName: "DiceeSix")
        rightDiceImageView2.image = #imageLiteral(resourceName: "DiceeFive")
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Add this condition judgement is to avoid the 'out of limit' problem of a array
        if leftDiceNumber > 5 {
            leftDiceNumber = 0
        }
        if rightDiceNumber > 5 {
            rightDiceNumber = 1
        }
            
        leftDiceImageView1.image = diceArray[leftDiceNumber]
        
        rightDiceImageView2.image = diceArray[rightDiceNumber]
        
        leftDiceNumber += 1
        rightDiceNumber += 1
        // print("Button got tapped.")
        // leftDiceImageView1.image = #imageLiteral(resourceName: "DiceeFour")
        // rightDiceImageView2.image = #imageLiteral(resourceName: "DiceeTwo")
    
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        leftDiceImageView1.image = #imageLiteral(resourceName: "DiceeOne")
        rightDiceImageView2.image = #imageLiteral(resourceName: "DiceeOne")
    }
    
    // Random button pressed event
    @IBAction func randomButtonPressed(_ sender: UIButton) {
        
        var leftDiceRandomNumber = Int.random(in: 0...5)
        var rightDiceRandomNumber = Int.random(in: 0...5)
        
        leftDiceImageView1.image = diceArray[leftDiceRandomNumber]
               
               rightDiceImageView2.image = diceArray[rightDiceRandomNumber]
    }
    
}

