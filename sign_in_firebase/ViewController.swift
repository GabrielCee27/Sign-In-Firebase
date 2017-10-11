//
//  ViewController.swift
//  sign_in_firebase
//
//  Created by Gabriel Cisneros on 10/10/17.
//  Copyright © 2017 Gabriel Cisneros. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func signInTapped(_ sender: Any) {
    
        if let email = emailTextField.text, let password = passwordTextField.text{
        
            Auth.auth().createUser(withEmail: email, password: password, completion: { user, error in
                
                if let firebaseError = error{
                        print(firebaseError.localizedDescription)
                        return
                }
                
               presentLoggedInScreen()
                
               // print("Created an account!")

            })
        
        }
    
        func presentLoggedInScreen(){
            let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let loggedInVC:LoggedInVC = storyboard.instantiateViewController(withIdentifier: "LoggedInVC") as! LoggedInVC
            self.present(loggedInVC, animated: true, completion: nil)
        }
        
    }
    
    
    
    
}

