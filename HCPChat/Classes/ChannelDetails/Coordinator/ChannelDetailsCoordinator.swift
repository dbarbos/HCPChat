//
//  ChannelDetailsCoordinator.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

protocol ChannelDetailsCoordinatorProtocol: Coordinator {
  func showChannelDetailsViewController()
}

class ChannelDetailsCoordinator: ChannelDetailsCoordinatorProtocol {
  
  weak var delegate: CoordinatorDelegate?
  var navigationController: UINavigationController
  var childCoordinators: [Coordinator] = []
  var flow: CoordinatorFlow { .channelDetails(members: []) }
  
  required init(_ navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    showChannelDetailsViewController()
  }
  
  func showChannelDetailsViewController() {
    let channelDetailsViewController = ChannelDetailsViewController()
    channelDetailsViewController.coordinator = self
    
    navigationController.pushViewController(channelDetailsViewController, animated: true)
  }
  
  deinit {
    print("Channel Details Coordinator dealocated successfuly")
  }
  
}
