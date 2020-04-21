//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Fernanda Dias on 20/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultValueLabel: UILabel!
    
    @IBOutlet weak var resultTextRecommendation: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValueLabel.text = bmiValue
        view.backgroundColor = color
        resultTextRecommendation.text = advice
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
