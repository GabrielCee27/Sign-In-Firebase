//
//  LoggedInVC.swift
//  sign_in_firebase
//
//  Created by Gabriel Cisneros on 10/10/17.
//  Copyright © 2017 Gabriel Cisneros. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoggedInVC: UIViewController {

    @IBAction func loggedOutTapped(_ sender: Any) {
    
        do{
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
            
        } catch{
            print("There was an error logging out")
        
        }
      
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
