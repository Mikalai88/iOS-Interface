//
//  ViewController.swift
//  iOS-Interface-Lesson1
//
//  Created by Mikalai & Elli on 19.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    @objc func keyboardWillShow(notification: Notification) {
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
    }
  
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
          let checkResult = checkUserData()
          
          if !checkResult {
              showLoginError()
          }
          
          return checkResult
      }
      
      func checkUserData() -> Bool {
//          guard let login = loginTextField.text,
//              let password = passwordTextField.text else { return false }
//
//          if login == "admin" && password == "12345" {
//              return true
//          } else {
//              return false
//          }
        
        return true
      }
      
      func showLoginError() {
          let alter = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
          let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
          alter.addAction(action)
          present(alter, animated: true, completion: nil)
      }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
    }
    
}

