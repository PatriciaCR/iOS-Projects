//
//  TipCalculator.swift
//  Tipper
//
//  Created by Patricia Caceres on 8/27/20.
//  Copyright © 2020 Patricia Caceres. All rights reserved.
//

import Foundation

class TipCalculator{
    var billAmount: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    
    init(billAmount: Double, tipPercentage: Double){
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
    }
    
    func calculatetip(){
        tipAmount = billAmount*tipPercentage
        totalAmount = tipAmount+billAmount
    }
    
}
