//
//  HCPChat.swift
//  HCPChat
//
//  Created by Diler Barbosa on 12/10/21.
//

import UIKit

public struct HCPChat {
  
  static let featureIdentifier = "HCPChat"
  
  public static let bundle: Bundle? = {
      let bundle = Bundle.main
      let path = "\(bundle.bundlePath)/\(featureIdentifier).bundle"
      return Bundle(path: path)
  }()
  
  static public func start(flow: CoordinatorFlow = .channelDetails, from navigationController: UINavigationController) {
    
    let mainCoordinator = MainCoordinator(navigationController)
    mainCoordinator.start()
  }
}
