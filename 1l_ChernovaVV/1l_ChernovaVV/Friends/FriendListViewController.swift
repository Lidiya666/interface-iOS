//
//  FriendListViewController.swift
//  1l_ChernovaVV
//
//  Created by Lidiya on 08/03/2019.
//  Copyright © 2019 lidiya. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController {
    
    var friends = ["Иван Андреич", "Ульяна Байбак", "Злобный Боря", "Макс Голодный", "Аня Джулай"]
    var photoFriends = ["01", "02", "03", "04", "05"]

    @IBOutlet weak var friendListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendListView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    /*override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // Вернем результат
        return true
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // если идентификатор segue равно "detailSegue"
        if segue.identifier == "detailSegue" {
            // создаем  dvc, которая будет равна контроллеру на который мы переходим с помощью segue
            //который обязательно будет типа  SegueViewController
           if let indexPath = friendListView.indexPathForSelectedRow {
                let dvc = segue.destination as! PhotoFriendViewController
                // теперь ты имеешь доступ к переменным в этом контроллере
                // и только те переменные которые ты тут передашь перейду с тобой в новый контроллер
                dvc.photoNames = [photoFriends[indexPath.row]]
            }
            
        }
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

extension FriendListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendListTableViewCell
        cell.FriendName.text = friends[indexPath.row]
        cell.photoFriendMini.image = UIImage(named: photoFriends[indexPath.row])
        
        return cell
    }
    
}
