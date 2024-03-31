//
//  ViewController.swift
//  LEDBoard
//
//  Created by 유림 on 3/30/24.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {
    
    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentsLabel.textColor = .yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            // segue.destination : 전환하려는 뷰컨트롤러의 인스턴스를 가져오는 프로퍼티
            settingViewController.delegate = self  // delegate 위임받기
            currentToSettings(settingViewController)
        }
    }
    
    func changedSettings(text: String?, textColor: UIColor, bgColor: UIColor) {
        self.contentsLabel.text = text
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = bgColor
    }
    
    func currentToSettings(_ settingViewController: SettingViewController) {
        settingViewController.textContents = self.contentsLabel.text
        settingViewController.textColor = self.contentsLabel.textColor
        settingViewController.bgColor = self.view.backgroundColor ?? .black
    }
}

