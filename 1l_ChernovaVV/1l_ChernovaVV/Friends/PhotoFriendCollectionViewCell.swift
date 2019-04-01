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
        
        var valColor = UIColor()
        
        likeButton.tintColor = likeButton.tintColor == #colorLiteral(red: 1, green: 0.199475348, blue: 0.2767442465, alpha: 1) ? #colorLiteral(red: 0.75742203, green: 0.7766188383, blue: 0.8110727072, alpha: 1) : #colorLiteral(red: 1, green: 0.199475348, blue: 0.2767442465, alpha: 1)
        if(likeButton.tintColor == #colorLiteral(red: 1, green: 0.199475348, blue: 0.2767442465, alpha: 1)) {
            value = value + 1
            valColor = #colorLiteral(red: 1, green: 0.199475348, blue: 0.2767442465, alpha: 1)
        } else {
            value = value - 1
            valColor = #colorLiteral(red: 0.4056248963, green: 0.4397159219, blue: 0.4782559872, alpha: 1)
        }
        qtyLike.fadeTransition(0.4)
        qtyLike.textColor = valColor
        qtyLike.text = String(value)
    }
    
    
    
}

extension UIView {
    func fadeTransition(_ duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name:
            CAMediaTimingFunctionName.easeInEaseOut)
        animation.type = CATransitionType.fade
        animation.duration = duration
        layer.add(animation, forKey: CATransitionType.fade.rawValue)
    }
}
