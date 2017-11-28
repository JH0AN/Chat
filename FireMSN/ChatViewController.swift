//
//  ChatViewController.swift
//  FireMSN
//
//  Created by practica on 25/11/17.
//  Copyright © 2017 SebasTitan. All rights reserved.
//

import UIKit
import Firebase
class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var tableView: UITableView!
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

       tableView.delegate = self
       tableView.dataSource = self
        tableView.register(UINib(nibName:"CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomMessageCell")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomMessageCell", for: indexPath) as! CustomTableViewCell
        let messageArray = ["Cell 01","Cell 02", "Cell 03"]
        cell.messageLabel.text = messageArray[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
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
