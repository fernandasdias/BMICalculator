//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain =  CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderProp: UISlider!
    @IBOutlet weak var weightSliderProp: UISlider!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f",sender.value ) + "kg"
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func calculateBMIPressed(_ sender: UIButton) {
        let weight = weightSliderProp.value
        let height = heightSliderProp.value
       
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.color = calculatorBrain.getColor()
            destinationVC.advice = calculatorBrain.getAdvice()
            
        }
    }
}

