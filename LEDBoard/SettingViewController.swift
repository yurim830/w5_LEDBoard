//
//  SettingsViewController.swift
//  LEDBoard
//
//  Created by 유림 on 3/30/24.
//

import UIKit

protocol LEDBoardSettingDelegate: AnyObject {
    func changedSettings(text: String?, textColor: UIColor, bgColor: UIColor)
}

class SettingViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LEDBoardSettingDelegate? // delegate 패턴 앞에는 메모리 누수 방지를 위해 weak 키워드 사용해야 함!
    
    var textContents: String?
    var textColor: UIColor = .yellow
    var bgColor: UIColor = .black
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == yellowButton {
            changeTextColorButton(.yellow)
            textColor = .yellow
        } else if sender == purpleButton {
            changeTextColorButton(.purple)
            textColor = .purple
        } else if sender == greenButton {
            changeTextColorButton(.green)
            textColor = .green
        }
    }
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == blackButton {
            changeBackgroundColorButton(.black)
            bgColor = .black
        } else if sender == blueButton {
            changeBackgroundColorButton(.blue)
            bgColor = .blue
        } else if sender == orangeButton {
            changeBackgroundColorButton(.orange)
            bgColor = .orange
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
    
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSettings(
            text: self.textField.text,
            textColor: self.textColor,
            bgColor: self.bgColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    func configure() {
        self.textField.text = textContents
        changeTextColorButton(textColor)
        changeBackgroundColorButton(bgColor)
    }
}
