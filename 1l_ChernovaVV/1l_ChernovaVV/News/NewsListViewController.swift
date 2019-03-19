//
//  NewsListViewController.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 19/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class NewsListViewController: UIViewController {
    
    struct News {
        var friend: Friend
        var textNews: String
        var qtyLike: Int
        var qtyComment: Int
        var qtyShare: Int
        var qtyView: Int
    }
    
    struct Friend {
        var image: String
        var name: String
    }
    
    @IBOutlet weak var NewListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewListView.dataSource = self
        NewListView.delegate = self
    }

}

extension NewsListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsListTableViewCell
        
        return cell
    }
    
    
}

extension NewsListViewController: UITableViewDelegate {
    
}
