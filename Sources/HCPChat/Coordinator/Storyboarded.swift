//
//  Storyboarded.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

protocol Storyboarded {
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static func instantiate() -> Self {
    let id = String(describing: self)
    let storyboard = UIStoryboard(name: id, bundle: bundle)
    
    return storyboard.instantiateViewController(withIdentifier: id) as! Self
  }
  
  private static let bundle: Bundle? = {
      let bundle = Bundle.main
      let path = "\(bundle.bundlePath)/\(featureIdentifier).bundle"
      return Bundle(path: path)
  }()
}
