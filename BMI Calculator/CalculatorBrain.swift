//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Shahzeb Khan on 14.08.25.
//


import UIKit

struct CalculatorBrain {
    
    // declaring default value
    var bmi: BMI?
    
    
    
    
    // func that use the formula to calculate the bmi
    mutating func calculateBmi (height: Float, weight: Float){
        
        let BMIValue = weight / (height * height)
        
        
        if (BMIValue < 18.5){
            
            bmi = BMI(value: BMIValue, advice:"Possible nutritional deficiency" , colour: .lightBlue)
            
        }else if (BMIValue < 24.9){
            
            bmi = BMI(value: BMIValue, advice:"Low risk of health", colour: .lightGreen)
            
        }else{
            
            bmi = BMI(value: BMIValue, advice:"High risk of health" , colour: .lightRed)
        }
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "error"
    }
    
    func getColour() -> UIColor{
        
        return bmi?.colour ?? .white
    }
    
    
    
    
    
    
    // func to convert "bmi" value from float to string
    func getBmiValue()-> String {
        
        // the "%.1f" is used to reduce the decimal numbers e.g the 1f means one number after the decimal
        let uptoDecimal1 = String(format: "%.1f", bmi?.value ?? 0.0)
        return uptoDecimal1
    }
    
    
 
}
