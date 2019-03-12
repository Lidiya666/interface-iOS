//
//  AddGroupViewController.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 09/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController {
    
    var groups = [
        ["Странный юмор", "g1"],
        ["Бумажный кораблик", "g2"],
        ["Мозг рака", "g3"],
        ["Борьба с заблуждениями", "g4"]
    ]

    @IBOutlet weak var GroupsListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GroupsListView.dataSource = self

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

extension AddGroupViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddGroupCell", for: indexPath) as! AddGroupTableViewCell
        cell.groupName.text = groups[indexPath.row][0]
        cell.groupPhoto.image = UIImage(named: groups[indexPath.row][1])
        
        return cell
    }
    
}
