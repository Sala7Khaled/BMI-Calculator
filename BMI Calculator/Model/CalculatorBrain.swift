//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Salah Khaled on 2/12/20.
//  Copyright © 2020 Salah Khaled. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        var bmiValue: Float = 0.0
        
        if height == 0 {
            bmiValue = weight / pow(height + 1, 2)
        } else
        {
            bmiValue = weight / pow(height, 2)
        }
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
}
