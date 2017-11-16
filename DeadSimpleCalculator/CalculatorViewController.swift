//
//  CalculatorViewController.swift
//  DeadSimpleCalculator
//
//  Created by Kamil Tustanowski on 07.11.2017.
//  Copyright © 2017 ktustanowski. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    private var isEnteringNumber = false
    private var digitLimit = 9
    private var lastSign: String?
    private var lastNumberString: String?
    
    @IBAction func numberTapped(sender: UIButton) {
        guard let currentNumber = isEnteringNumber ? numberLabel.text : "",
            currentNumber.characters.count < digitLimit,
            let newDigit = sender.titleLabel?.text else { return }
        
        numberLabel.text = currentNumber + newDigit
        isEnteringNumber = true
    }

    @IBAction func signTapped(sender: UIButton) {
        isEnteringNumber = false
        var result: Int?
        
        if sender.titleLabel?.text == "=" {
            if lastSign == "+",
                let lastNumber = Int(lastNumberString!),
                let currentNumber = Int(numberLabel.text!) {
                result = lastNumber + currentNumber
            }
            
            if let result = result {
                numberLabel.text = String(result)
            }
        } else {
            lastSign = sender.titleLabel?.text
            lastNumberString = numberLabel.text
        }
    }
}

