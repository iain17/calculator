//
//  ViewController.swift
//  Calculator
//
//  Created by Iain Munro on 05/09/2017.
//  Copyright © 2017 iMunro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsTyping = false
    
    @IBAction func TouchDigit(_ sender: UIButton)
    {
        let digit = sender.currentTitle!
        print("\(digit) was touched.")
        if(userIsTyping){
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }
        else{
            display.text = digit
            userIsTyping = true;
            
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsTyping = false;
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}
