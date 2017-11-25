//
//  RegisterViewController.swift
//  FireMSN
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 SebasTitan. All rights reserved.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {

    @IBOutlet var email_register: UITextField!
    @IBOutlet var pass_register: UITextField!
    @IBAction func buttonRegister(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: email_register.text!, password: pass_register.text!) {
            (user, error) in
            if error != nil
            {
                print(error!)
            }
            else{
                print("Register is success")
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
