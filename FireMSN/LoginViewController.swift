//
//  LoginViewController.swift
//  FireMSN
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 SebasTitan. All rights reserved.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    
    @IBOutlet var email_login: UITextField!
    @IBOutlet var pass_login: UITextField!
    @IBAction func button_login(_ sender: UIButton) {
    
       
            Auth.auth().signIn(withEmail: email_login.text!, password: pass_login.text!) { (user, error) in
                if error != nil
                {
                    print(error!)
                }
                else{
                    print("login is success")
                    self.performSegue(withIdentifier: "goToChat", sender: self)
                }
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
