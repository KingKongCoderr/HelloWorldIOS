//
//  IamRichViewController.swift
//  HelloWorldIOS
//
//  Created by Tankasala, Nandeesh on 4/21/19.
//  Copyright © 2019 Tankasala, Nandeesh. All rights reserved.
//

import UIKit

class IamRichViewController: UIViewController{
    
    @IBOutlet weak var richTextField: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    var isPurple = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //making action for UILabel
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.onRichLabelTap(_:)))
        richTextField.isUserInteractionEnabled = true
        richTextField.addGestureRecognizer(gestureRecognizer)
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
}
