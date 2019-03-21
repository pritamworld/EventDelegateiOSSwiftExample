//
//  DDOTableViewCell.swift
//  EventDelegateiOSSwiftExample
//
//  Created by Pritesh Patel on 2018-02-26.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

class DDOTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMakeModelYear: UILabel!
    @IBOutlet weak var lblVIN: UILabel!
    @IBOutlet weak var lblAccountType: UILabel!
    @IBOutlet weak var imgCar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
