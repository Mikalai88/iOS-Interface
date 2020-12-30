//
//  FriendsTableViewController.swift
//  iOS-Interface-Lesson1
//
//  Created by Mikalai & Elli on 27.12.20.
//

import UIKit

class FriendsTableViewController: UITableViewController {

  let friends: [String] = [
    "Антон",
    "Егор",
    "Олег",
    "Александр",
    "Роман",
    "Дмитрий",
    "Василий",
    "Анатолий",
    "Павел",
    "Сергей"
  ]
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return friends.count
    }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    100
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendsTableViewCell {
    cell.friendName.text = friends[indexPath.row]
    
      return cell
    }
    
    return UITableViewCell()
  }



}
