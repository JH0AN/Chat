//
//  ChatViewController.swift
//  FireMSN
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 SebasTitan. All rights reserved.
//

import UIKit
import Firebase
class ChatViewController: UIViewController {

    @IBAction func barLogOut(_ sender: UIBarButtonItem) {
        do {
            try  Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch  {
            print("Hubo un error durante el proceso...")
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
