//
//  ViewController.swift
//  Login_Toure
//
//  Created by Sheick on 11/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func pressedForgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "loginPage", sender: forgotUserNameButton)

    }
    
    @IBAction func pressedForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "loginPage", sender: forgotPasswordButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = userName.text
        
        guard let sender = sender as? UIButton else {
        return
        
        }
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
        userName.text
        }
    }
    
    
    
}

