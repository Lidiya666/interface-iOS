//
//  FriendListTableViewCell.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 08/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class FriendListTableViewCell: UITableViewCell {

    @IBOutlet weak var FriendName: UILabel!
    @IBOutlet weak var photoFriendMini: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
