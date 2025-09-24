//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Shahzeb Khan on 14.08.25.
// 

import UIKit



class ResultViewController: UIViewController {

   
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiBackground: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        
        adviceLabel.text = bmiAdvice
        
        view.backgroundColor = bmiBackground
    
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
   

}
