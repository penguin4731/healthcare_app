//
//  SettingViewController.swift
//  health-plus
//
//  Created by Yo Higashida on 2021/03/09.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var weight: CustomUITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "設定"
        
        weight.text = UserDefaults.standard.string(forKey: "weight")
        self.weight.keyboardType = UIKeyboardType.numberPad
        // toolbar
        let toolbar = UIToolbar()
        toolbar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44)
        let doneButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(SettingViewController.donePad))
        toolbar.setItems([doneButtonItem], animated: true)
        weight.inputAccessoryView = toolbar
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save() {
        let weightText = weight.text ?? ""
        if weightText == "0" {
            Alert.show(title: "体重0kg!?", content: "本当にその体重ですか...", viewController: self)
        } else if weightText.isAlphanumeric() {
            UserDefaults.standard.set(Int(weightText), forKey: "weight")
            self.dismiss(animated: true, completion: nil)
        } else {
            Alert.show(title: "エラー", content: "数字のみを入力してください", viewController: self)
        }
    }
    
    @IBAction func runCal() {
        let url = URL(string: "https://amzn.to/2Nac987")
        UIApplication.shared.open(url!)
    }
    
    @IBAction func eatCal() {
        let url = URL(string: "https://amzn.to/38vnQhm")
        UIApplication.shared.open(url!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // キーボードを閉じる
        weight.endEditing(true)
    }
    
    @objc func donePad() {
        weight.endEditing(true)
    }
}

extension String {
    // 半角数字の判定
    func isAlphanumeric() -> Bool {
        return self.range(of: "[^0-9]+", options: .regularExpression) == nil && self != ""
    }
}
