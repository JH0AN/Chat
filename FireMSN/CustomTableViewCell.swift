//
//  CustomTableViewCell.swift
//  FireMSN
//
//  Created by practica on 27/11/17.
//  Copyright © 2017 SebasTitan. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var senderLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
