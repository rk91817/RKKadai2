//
//  ViewController.swift
//  RKkadai2
//
//  Created by kasai riku on 2022/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var calculationSegmentedControl: UISegmentedControl!
    @IBAction private func calculateButton(_ sender: Any) {
        let firstValue = Double(firstTextField.text ?? "") ?? 0
        let secondValue = Double(secondTextField.text ?? "") ?? 0
        switch calculationSegmentedControl.selectedSegmentIndex {
        case 0:
            resultLabel.text = String(firstValue + secondValue)
        case 1:
            resultLabel.text = String(firstValue - secondValue)
        case 2:
            resultLabel.text = String(firstValue * secondValue)
        case 3:
            if secondValue == 0 {
                resultLabel.text = "割る数には０以外を入力して下さい"
            } else {
                resultLabel.text = String(firstValue / secondValue)
            }
        default:
             fatalError("selectedSegmentIndexが異常です")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.adjustsFontSizeToFitWidth = true
    }
}
