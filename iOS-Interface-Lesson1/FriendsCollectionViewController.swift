//
//  FriendsCollectionViewController.swift
//  iOS-Interface-Lesson1
//
//  Created by Mikalai & Elli on 27.12.20.
//

import UIKit

class FriendsCollectionViewController: UICollectionViewController {
  
  
  var friends: [User]!
  var networkService: NetworkService!
  
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    networkService = NetworkService()
    friends = networkService.getFriends()
  }


    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? FriendsCollectionViewCell {
        cell.counterLabel.text = "\(counter)"
        cell.friendImage.image = friends[indexPath.row].image
        
        cell.friendImage.layer.cornerRadius = cell.friendImage.frame.width / 2
        cell.friendImage.layer.shadowColor = UIColor.gray.cgColor
        cell.friendImage.layer.shadowOffset = CGSize(width: 5, height: 5)
        cell.friendImage.layer.shadowRadius = 10
        cell.friendImage.layer.shadowOpacity = 0.5
    
        return cell
      }
      return UICollectionViewCell()
    }
}

