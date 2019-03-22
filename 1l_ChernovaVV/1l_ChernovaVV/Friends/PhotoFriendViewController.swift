//
//  PhotoFriendViewController.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 09/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class PhotoFriendViewController: UIViewController {
    
    var photoNames = [String]()
    var qtyLikes = 783

    @IBOutlet weak var photoFriend: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoFriend.dataSource = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(PhotoFriendViewController.tappedMe))
        photoFriend.addGestureRecognizer(tap)
        photoFriend.isUserInteractionEnabled = true
    }
    
    @objc func tappedMe()
    {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.8
        pulse.fromValue = 0.96
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.initialVelocity = 0.7
        pulse.damping = 0.1
        photoFriend.layer.add(pulse, forKey: nil)
    }
}

extension PhotoFriendViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoFriendCell", for: indexPath) as! PhotoFriendCollectionViewCell
        cell.photoFriend.image = UIImage(named: "0\(photoNames[0])")
        cell.photoFriend.contentMode = .scaleAspectFit
        
        cell.qtyLike.text = "\(qtyLikes)"
        cell.qtyLike.textColor = #colorLiteral(red: 0.4056248963, green: 0.4397159219, blue: 0.4782559872, alpha: 1)
        
        //let button = UIButton(type: .custom)
        let image = UIImage(named: "heart")?.withRenderingMode(.alwaysTemplate)
        cell.likeButton.setImage(image, for: .normal)
        cell.likeButton.tintColor = #colorLiteral(red: 0.75742203, green: 0.7766188383, blue: 0.8110727072, alpha: 1)
        
        return cell
    }
    
    
}
