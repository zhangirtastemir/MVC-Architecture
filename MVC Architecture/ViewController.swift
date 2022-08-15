//
//  ViewController.swift
//  MVC Architecture
//
//  Created by Zhangirkhan on 09.08.2022.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showButton(_ sender: Any) {
      
        self.hiLabel.text = "Hi, "
        self.alert(title: "Внимание!", message: "Введите ваше имя", style: .alert)
    }
    
    //2
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message , preferredStyle: style)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLabel.text! += (text?.text!)! + ("!")
        
        }
        
        alertController.addTextField{ (textField) in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
        }
    }
    

 
