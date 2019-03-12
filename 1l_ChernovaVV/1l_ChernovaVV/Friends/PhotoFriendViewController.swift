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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PhotoFriendViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoFriendCell", for: indexPath) as! PhotoFriendCollectionViewCell
        cell.photoFriend.image = UIImage(named: "0\(photoNames[0])")
        
        cell.qtyLike.text = "\(qtyLikes)"
        
        //let button = UIButton(type: .custom)
        let image = UIImage(named: "heart")?.withRenderingMode(.alwaysTemplate)
        cell.likeButton.setImage(image, for: .normal)
        cell.likeButton.tintColor = UIColor.black
        
        return cell
    }
    
    
}
