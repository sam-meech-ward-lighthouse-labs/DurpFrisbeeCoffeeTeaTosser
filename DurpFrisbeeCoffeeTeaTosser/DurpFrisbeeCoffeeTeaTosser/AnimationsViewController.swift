//
//  AnimationsViewController.swift
//  DurpFrisbeeCoffeeTeaTosser
//
//  Created by Sam Meech-Ward on 2018-09-11.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class AnimationsViewController: UIViewController {
  
  @IBOutlet weak var heightConstraint: NSLayoutConstraint!
  
  let square = UILabel()
  var animation: UIViewPropertyAnimator!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.preferstatusbar
    
    square.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    square.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
    print("\(square.bounds)")
    view.addSubview(square)
    square.text = "hello 💩"
    square.textAlignment = .center
    
    animation = UIViewPropertyAnimator(duration: 5.0, curve: .easeInOut, animations: {
      self.square.frame = CGRect(x: 300, y: 600, width: 200, height: 200)
    })
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//    animation.pauseAnimation()
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
    self.heightConstraint.constant = 1000
    
    UIView.animate(withDuration: 5.0, animations: {
      // the next screen refresh
      self.view.layoutIfNeeded()
      self.square.transform = self.square.transform.rotated(by: CGFloat.pi*3.0/4.0)
    }) { _ in
      print("\(self.square.frame)")
    }
    
    
//    animation.startAnimation()
    
//    UIView.animate(withDuration: 5.0) {
//      self.square.frame = CGRect(x: 300, y: 600, width: 200, height: 200)
//    }
    
//    UIView.animate(withDuration: 5.0, animations: {
//      self.square.frame = CGRect(x: 300, y: 600, width: 200, height: 200)
//    }) { _ in
//      self.square.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
//    }
    
//    UIView.animate(withDuration: 5.0, delay: 1.0, options: [.curveEaseOut, .autoreverse], animations: {
//      self.square.frame = CGRect(x: 300, y: 600, width: 200, height: 200)
//      self.square.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
////      self.square.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
//      self.square.tag = 10
//    }) { _ in
//      self.square.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
//    }

//    UIView.animate(withDuration: 5.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
//      self.square.frame = CGRect(x: 200, y: 300, width: 200, height: 200)
//      self.square.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
//      //      self.square.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
//      self.square.tag = 10
//    }) { _ in
//      self.square.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
//    }
    
  }

}
