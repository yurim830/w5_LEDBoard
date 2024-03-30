//
//  SettingsViewController.swift
//  LEDBoard
//
//  Created by 유림 on 3/30/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == yellowButton {
            changeTextColorButton(.yellow)
        } else if sender == purpleButton {
            changeTextColorButton(.purple)
        } else if sender == greenButton {
            changeTextColorButton(.green)
        }
    }
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == blackButton {
            changeBackgroundColorButton(.black)
        } else if sender == blueButton {
            changeBackgroundColorButton(.blue)
        } else if sender == orangeButton {
            changeBackgroundColorButton(.orange)
        }
    }
    
    private func changeTextColorButton(_ color: UIColor) {
        yellowButton.alpha = color == .yellow ? 1 : 0.2
        purpleButton.alpha = color == .purple ? 1 : 0.2
        greenButton.alpha = color == .green ? 1 : 0.2
    }
    private func changeBackgroundColorButton(_ color: UIColor) {
        blackButton.alpha = color == .black ? 1 : 0.2
        blueButton.alpha = color == .blue ? 1 : 0.2
        orangeButton.alpha = color == .orange ? 1 : 0.2
    }
}
