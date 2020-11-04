//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows to reference a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // What the app should be like when loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceThree")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = diceArray[getRandomNumber()]
        diceImageViewTwo.image = diceArray[getRandomNumber()]
    }
    
    func getRandomNumber() -> Int{
        return Int.random(in: 0...5)
    }
}

