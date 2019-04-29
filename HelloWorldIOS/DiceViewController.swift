//
//  DiceViewController.swift
//  HelloWorldIOS
//
//  Created by Tankasala, Nandeesh on 4/23/19.
//  Copyright © 2019 Tankasala, Nandeesh. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController{
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    let imageNameArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    @IBOutlet weak var greetingTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingTextView.isHidden = true
        rollDice()
    }
    
    @IBAction func onRollDiceTapped(_ sender: UIButton) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    func rollDice(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        dice1ImageView.image = UIImage(named: imageNameArray[randomDiceIndex1])
        dice2ImageView.image = UIImage(named: imageNameArray[randomDiceIndex2])
        
        if (randomDiceIndex1 == 5 && randomDiceIndex2 == 5) {
            greetingTextView.isHidden = false
        }else{
            greetingTextView.isHidden = true
        }
    }
    
    
}

