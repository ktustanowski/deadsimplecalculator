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
    
    @IBAction func numberTapped(sender: UIButton) {
        guard let currentNumber = isEnteringNumber ? numberLabel.text : "",
            let newDigit = sender.titleLabel!.text else { return }
        
        numberLabel.text = currentNumber + newDigit
        isEnteringNumber = true
    }

}

