//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

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
        
        let BMI = weight/pow(height,2)
        print(BMI)
    }
}

