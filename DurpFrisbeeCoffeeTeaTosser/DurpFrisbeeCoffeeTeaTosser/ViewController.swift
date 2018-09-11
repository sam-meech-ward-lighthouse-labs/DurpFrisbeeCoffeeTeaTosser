//
//  ViewController.swift
//  DurpFrisbeeCoffeeTeaTosser
//
//  Created by Sam Meech-Ward on 2018-09-11.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  func convertIntToString(_ value: Int) -> String {
    return String(value*value)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    let completion: (() -> Void) = {
//      print("Done with stiring")
//    }
    
    let array1 = [1, 2, 3, 4, 5]
    
    let array2 = array1.map(convertIntToString)
    
    print(array2)
    
    var count = 0
    
    stirTea(spoon: "🥄") { water in
      print("Done from anonymouse closiure \(water)")
      self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      count += 1
    }
  }
  
  func done() {
    print("Done with stuff")
  }
  
  func stirTea(spoon: String, completion: (_ water: String) -> Void) {
    // Do a bunch of stuff
    // Maybe async
    // maybe IO
    completion("🔫")
  }
}





//}
//
//  var paperBag = true
//
//  override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view, typically from a nib.
//
//    let thing1 = toss()
//    let thing2 = toss
//
//    print("\(thing1) \(thing2) \(thing2())")
//
//    callFunc(returnFunc())
//
//    let someClosure: (() -> String) = {
//      print("Do something")
//      return ""
//    }
//
//    callFunc(someClosure)
//
//  }
//
//  func callFunc(_ function: () -> String) {
//    print(function())
//  }
//
//  func returnFunc() -> (() -> String) {
//    paperBag = !paperBag
//    return toss
//  }
//
//  func toss() -> String {
//    return "BOOMarang"
//  }
//
//
//}

