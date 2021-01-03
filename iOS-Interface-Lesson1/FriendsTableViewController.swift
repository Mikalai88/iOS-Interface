//
//  FriendsTableViewController.swift
//  iOS-Interface-Lesson1
//
//  Created by Mikalai & Elli on 27.12.20.
//

import UIKit


class FriendsTableViewController: UITableViewController {
  

  var friends: [User]!
  var networkService: NetworkService!
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    networkService = NetworkService()
    friends = networkService.getFriends()
    
    tableView.reloadData()
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
      cell.friendName.text = friends[indexPath.row].name
      cell.friendPhoto.image = friends[indexPath.row].image
      
      cell.friendPhoto.layer.cornerRadius = cell.friendPhoto.frame.width / 2
      cell.friendPhoto.layer.shadowColor = UIColor.gray.cgColor
      cell.friendPhoto.layer.shadowOffset = CGSize(width: 5, height: 5)
      cell.friendPhoto.layer.shadowRadius = 10
      cell.friendPhoto.layer.shadowOpacity = 0.5
    
      return cell
    }
    
    return UITableViewCell()
  }
}
