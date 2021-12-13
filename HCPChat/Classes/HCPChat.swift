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
  
  static public func start(flow: CoordinatorFlow, from navigationController: UINavigationController) {
    
    switch flow {
    case .main:
      let mainCoordinator = MainCoordinator(navigationController)
      mainCoordinator.start()
    case .channelDetails(let members):
      let channelCoordinator = ChannelDetailsCoordinator(navigationController)
      channelCoordinator.start()
    }
  }
}
