//
//  ViewController.swift
//  Task3
//
//  Created by 野村大悟 on 2021/03/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var textField1: UITextField!
    @IBOutlet private var textField2: UITextField!
    @IBOutlet private var switchButton: UISwitch!
    @IBOutlet private var switchButton2: UISwitch!
    @IBOutlet private var textLabel1: UILabel!
    @IBOutlet private var textLabel2: UILabel!
    @IBOutlet private var resultLabel: UILabel!
    @IBAction private func caluclationButton(_ sender: Any) {
        guard let text1 = textField1.text else { return }
        guard let text2 = textField2.text else { return }
        var textNum1 = Int(text1) ?? 0
        var textNum2 = Int(text2) ?? 0
        if switchButton.isOn {
            textNum1 *= -1
        }
        if switchButton2.isOn {
            textNum2 *= -1
        }
        textLabel1.text = String(textNum1)
        textLabel2.text = String(textNum2)
        let resultNum = textNum1 + textNum2
        resultLabel.text = String(resultNum)
    }
}
