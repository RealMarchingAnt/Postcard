//
//  ViewController.swift
//  Postcard
//
//  Created by Patrik Johansson on 25/09/14.
//  Copyright (c) 2014 PJ Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Send Mail button has been pressed
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Populate the messageLabel
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        
        // Populate the name label
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.greenColor()
        enterNameTextField.text = ""
        
        enterMessageTextField.resignFirstResponder() // hide the keyboard
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    
}

