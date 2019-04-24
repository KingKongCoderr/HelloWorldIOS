//
//  IamRichViewController.swift
//  HelloWorldIOS
//
//  Created by Tankasala, Nandeesh on 4/21/19.
//  Copyright © 2019 Tankasala, Nandeesh. All rights reserved.
//

import UIKit

class IamRichViewController: UIViewController{
    
    @IBOutlet weak var richTextField: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var diamondImageView: UIImageView!
    
    var isPurple = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //making action for UILabel
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.onRichLabelTap(_:)))
        richTextField.isUserInteractionEnabled = true
        richTextField.addGestureRecognizer(gestureRecognizer)
        
        let imageGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.onDiamondTap(_:)))
        diamondImageView.isUserInteractionEnabled = true
        diamondImageView.addGestureRecognizer(imageGestureRecognizer)
        
    }
    
    @objc func onRichLabelTap(_ sender: UITapGestureRecognizer) {
        if isPurple{
            backgroundView.backgroundColor = UIColor.black
            isPurple = false
        }else{
            backgroundView.backgroundColor = UIColor.purple
            isPurple = true
        }
    }
    
    @objc func onDiamondTap(_ sender: UITapGestureRecognizer){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
    
}
