//
//  ViewController.swift
//  SwiftCalculator
//
//  Created by Randall Kanna on 9/13/15.
//  Copyright (c) 2015 Randall Kanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!;
    
    var userIsInTheMiddleOfTypingANumber = false;
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!;
        
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit;
        } else {
            display.text = digit;
            userIsInTheMiddleOfTypingANumber = true;
        }
    }
    
    var operandStack = Array<Double>();
    
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false;
        
    }
}

