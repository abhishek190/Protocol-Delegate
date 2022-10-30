//
//  ViewController.swift
//  PracticeApp
//
//  Created by Abhishek Rao on 22/10/22.
//

import UIKit

class ViewController: UIViewController,sendDataDelegate{
    @IBOutlet weak var nameLabel: UILabel!
    func getName(_ text: String) {
        self.nameLabel.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func AddButton(_ sender: Any) {
        guard let secondView = self.storyboard?.instantiateViewController(withIdentifier: "secondView") as? SecondViewConrtoller else {
            fatalError("View not load")
        }
        secondView.delegate = self
        navigationController?.pushViewController(secondView, animated: true)
    }
}
