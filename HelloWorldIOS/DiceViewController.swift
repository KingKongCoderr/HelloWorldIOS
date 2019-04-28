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

    
    
    @IBOutlet weak var dice1ImageView: UIImageView!
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func rollDice(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
    }
    
    
}

