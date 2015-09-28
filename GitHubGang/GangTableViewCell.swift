//
//  GangTableViewCell.swift
//  GitHubGang
//
//  Created by Mac Bellingrath on 9/28/15.
//  Copyright © 2015 Mac Bellingrath. All rights reserved.
//

import UIKit

class GangTableViewCell: UITableViewCell {

   
    @IBOutlet weak var userNameLabel: UILabel!

    @IBOutlet weak var imageVIew: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
