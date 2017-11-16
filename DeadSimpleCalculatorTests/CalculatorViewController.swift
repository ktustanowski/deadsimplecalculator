//
//  DeadSimpleCalculatorTests.swift
//  DeadSimpleCalculatorTests
//
//  Created by Kamil Tustanowski on 07.11.2017.
//  Copyright © 2017 ktustanowski. All rights reserved.
//

import XCTest
@testable import DeadSimpleCalculator

class CalculatorViewControllerTests: XCTestCase {
    
    var viewController: CalculatorViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyboard.instantiateInitialViewController() as? CalculatorViewController
        viewController.loadViewIfNeeded()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testThatUserCanEnterNumber() {
        let oneButton = UIButton()
        oneButton.titleLabel?.text = "1"
        let twoButton = UIButton()
        twoButton.titleLabel?.text = "2"
        let threeButton = UIButton()
        threeButton.titleLabel?.text = "3"

        viewController.numberTapped(sender: oneButton)
        viewController.numberTapped(sender: twoButton)
        viewController.numberTapped(sender: threeButton)
        
        XCTAssertEqual(viewController.numberLabel.text, "123")
    }
}
