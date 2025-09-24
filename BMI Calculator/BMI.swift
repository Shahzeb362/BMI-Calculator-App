//
//  BMI.swift
//  BMI Calculator
//
//  Created by Shahzeb Khan on 15.08.25.
//

import UIKit

struct BMI {
    
    let value: Float
    let advice: String
    let colour: UIColor
}

extension UIColor {
    static let lightBlue = UIColor(red: 0.40, green: 0.70, blue: 0.90, alpha: 1.0)
    static let lightGreen = UIColor(red: 0.40, green: 0.80, blue: 0.40, alpha: 1.0)
    static let lightRed = UIColor(red: 0.95, green: 0.50, blue: 0.50, alpha: 1.0)
}
