//
//  ViewController.swift
//  Dicee-iOS13
//

import UIKit

class ViewController: UIViewController {
    //References a UI element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //who... what... value
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFive")
    
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Changes dices after button is pressed
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceFour")
    }

}

