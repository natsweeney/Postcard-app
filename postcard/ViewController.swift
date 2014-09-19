 //
//  ViewController.swift
//  postcard
//
//  Created by Nat Sweeney on 9/14/14.
//  Copyright (c) 2014 nat_sweeney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var messageLabel : UILabel!
    @IBOutlet var enterNameTextField : UITextField!
    @IBOutlet var enterMessageTextField : UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    @IBAction func sendMailButtonPressed(sender : UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.purpleColor()
    }

   
}

