//
//  SecondViewController.swift
//  PracticeApp
//
//  Created by Abhishek Rao on 29/10/22.
//

import Foundation
import UIKit
protocol sendDataDelegate{
    func getName(_ text: String)
}
class SecondViewConrtoller: UIViewController{
    @IBOutlet weak var name: UITextField!
    var delegate: sendDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func addName(_ sender: Any) {
        self.delegate?.getName(name.text ?? "hello")
        navigationController?.popViewController(animated: true)
    }
}
