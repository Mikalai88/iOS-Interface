//
//  NetworkService.swift
//  iOS-Interface-Lesson1
//
//  Created by Mikalai & Elli on 03.01.21.
//

import Foundation
import UIKit

class NetworkService {
  func getFriends() -> [User] {
    return [
      User(name: "Антон", image: UIImage(named: "Icon-40")!),
      User(name: "Егор", image: UIImage(named: "Icon-41")!),
      User(name: "Олег", image: UIImage(named: "Icon-42")!),
      User(name: "Александр", image: UIImage(named: "Icon-43")!),
      User(name: "Роман", image: UIImage(named: "Icon-44")!),
      User(name: "Дмитрий", image: UIImage(named: "Icon-45")!),
      User(name: "Василий", image: UIImage(named: "Icon-46")!),
      User(name: "Анатолий", image: UIImage(named: "Icon-47")!),
      User(name: "Павел", image: UIImage(named: "Icon-48")!)
    ]
  }
}
