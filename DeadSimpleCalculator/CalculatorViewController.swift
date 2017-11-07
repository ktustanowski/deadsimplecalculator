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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberTapped(sender: UIButton) {
        guard let currentNumber = numberLabel.text,
            let newDigit = sender.titleLabel!.text else { return }
        
        numberLabel.text = currentNumber + newDigit
    }

}

