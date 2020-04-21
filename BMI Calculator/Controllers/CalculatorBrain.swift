//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fernanda Dias on 20/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bmi : BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? ""
    }
    mutating func calculateBMI( height: Float, weight:Float){
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5{
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
            
        } else if bmiValue < 24.9 {
            
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
            
        } else {
            
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    
    }
}

