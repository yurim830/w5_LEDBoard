//
//  ViewController.swift
//  LEDBoard
//
//  Created by 유림 on 3/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentsLabel.textColor = .yellow
    }
    
    func changeSettings(text: String?, bgColor: UIColor, labelColor: UIColor) {
        if let text = text {
            contentsLabel.text = text
        }
        self.view.backgroundColor = bgColor
        contentsLabel.textColor = labelColor
    }
}

