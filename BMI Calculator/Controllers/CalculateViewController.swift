//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2024
//

import UIKit

class CalculateViewController: UIViewController {
    
    // text value
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    // Slider text value
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // declaring "model" file structure
    var calculateBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // hieght slider button
    @IBAction func heightSliderChange(_ sender: UISlider) {
        
        // save the changing float value of button, save it in String
        let heightValue = String(format: "%.1f", sender.value)
        
        // save the changing hieght button value in hieght ui text
        heightLabel.text = "\(heightValue)m"
    }
    
    
    // weight slider button
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        // save the changing float value of button, save it in String
        let weightValue = String(format: "%.0f", sender.value)
        
        // save the changing weight button value in hieght ui text
        weightLabel.text = "\(weightValue)Kg"
    }
    
    
    // calculate button
    @IBAction func calculateButton(_ sender: UIButton) {
        
        // save the current value of sliders
        let heightSlideValue = heightSlider.value
        let weightSlideValue = weightSlider.value
        
        // method from CalculateBrain Struct used here, to calculate the bmi
        calculateBrain.calculateBmi(height: heightSlideValue, weight: weightSlideValue)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // this is an overiide func used to shift to next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "goToResult") {
            
            // here we are Forced Downcasting because the "segue.destination" was UIViewController
            let destinationVC = segue.destination as! ResultViewController
            
            // since here "destinationVC" is using "ResultViewController" class
            destinationVC.bmiValue = calculateBrain.getBmiValue()
            
            destinationVC.bmiAdvice = calculateBrain.getAdvice()
            
            destinationVC.bmiBackground = calculateBrain.getColour()
        }
        
        
    }
}

