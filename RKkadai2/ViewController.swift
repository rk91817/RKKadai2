//
//  ViewController.swift
//  RKkadai2
//
//  Created by kasai riku on 2022/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction private func calculateButton(_ sender: Any) {
        let firstValue = Double(firstTextField.text ?? "") ?? 0
        let secondValue = Double(secondTextField.text ?? "") ?? 0
        if calc == "plus" {
            resultLabel.text = String(firstValue + secondValue)
        } else if calc == "minus" {
            resultLabel.text = String(firstValue - secondValue)
        } else if calc == "multiply" {
            resultLabel.text = String(firstValue * secondValue)
        } else if calc == "divide" {
            if secondValue != 0 {
            resultLabel.text = String(firstValue / secondValue)
            } else if secondValue == 0 {
                resultLabel.text = "割る数には０以外を入力して下さい"
            }
        }
    }

     var calc = ""

    @IBAction private func calculateSegumentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
             calc = "plus"
        case 1:
             calc = "minus"
        case 2:
             calc = "multiply"
        case 3:
             calc = "divide"
        default:
            calc = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.adjustsFontSizeToFitWidth = true
    }
}
