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

        let textNum1 = Int(text1) ?? 0
        let textNum2 = Int(text2) ?? 0

        let signedNum1: Int
        if switchButton.isOn {
            signedNum1 = -textNum1
        } else {
            signedNum1 = textNum1
        }

        let signedNum2: Int
        if switchButton2.isOn {
            signedNum2 = -textNum2
        } else {
            signedNum2 = textNum2
        }

        textLabel1.text = String(signedNum1)
        textLabel2.text = String(signedNum2)

        let resultNum = signedNum1 + signedNum2

        resultLabel.text = String(resultNum)
    }
}
