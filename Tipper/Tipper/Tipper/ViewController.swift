//
//  ViewController.swift
//  Tipper
//
//  Created by Patricia Caceres on 8/27/20.
//  Copyright © 2020 Patricia Caceres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var totalResultLabel: UILabel!
    @IBOutlet weak var tipTotalLabel: UILabel!
    @IBOutlet weak var tipTotalAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var eachPersonLabel: UILabel!
    @IBOutlet weak var eachPersonAmountLabel: UILabel!
    
    var tipCalculator = TipCalculator(billAmount: 0, tipPercentage: 0.15)
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value)/100.0
        tipCalculator.billAmount = (billAmountTextField.text! as NSString).doubleValue
        tipCalculator.calculatetip()
        updateUI()
    }
    
    func updateUI(){
        totalAmountLabel.text = String(format: "$%0.2f", tipCalculator.totalAmount)
        tipTotalAmountLabel.text = String (format: "$%0.2f", tipCalculator.tipAmount)
        let numOfPeople: Int = Int(splitSlider.value)
        eachPersonAmountLabel.text = String (format: "$%0.2f", tipCalculator.totalAmount/Double(numOfPeople))
    }
    
    
    //Actions

    @IBAction func tipSliderChanged(_ sender: Any) {
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int (tipPercentageSlider.value))
        calculateBill()
    }
    @IBAction func splitSlider(_ sender: Any) {
        splitLabel.text = "Split: \(Int(splitSlider.value))"
        calculateBill()
    }
    @IBAction func billAmountTextFieldChanged(_ sender: Any) {
        calculateBill()
    }
    
}

