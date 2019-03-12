//
//  PhotoFriendCollectionViewCell.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 09/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class PhotoFriendCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoFriend: UIImageView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var qtyLike: UITextField!
    
    @IBOutlet weak var likeButton: UIButton!
    
    
    @IBAction func likeChanged(_ sender: Any) {
        guard let qtyLikes = qtyLike.text, var value = Int(qtyLikes) else {
            // report error and then 'return'
            return
        }
        
        likeButton.tintColor = likeButton.tintColor == UIColor.blue ? UIColor.black : UIColor.blue
        value = likeButton.tintColor == UIColor.blue ? value - 1 : value + 1
        
        qtyLike.text = String(value)
    }
    
}
