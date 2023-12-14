//
//  ViewController.swift
//  Alert
//
//  Created by Olgun ‏‏‎‏‏‎ on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpClicked(_ sender: Any) {
        /*
         let alert = UIAlertController(title: "Error!", message: "Username Not Found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
         print("Butona basıldı.")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil) */
        
        if usernameText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Username?", preferredStyle: UIAlertController.Style.alert)
            
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        else if passwordText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Password?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        else if password2Text.text == ""{
            let alert = UIAlertController(title: "Error", message: "Password?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        else if passwordText.text != password2Text.text
        {
            let alert = UIAlertController(title: "Error", message: "Passwords do not match.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            
        }
        else if passwordText.text == password2Text.text{
            let alert = UIAlertController(title: "Error", message: "Sign Up Succesfull.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
}
