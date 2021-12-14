//
//  MainCoordinator.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit
import SendBirdSDK

protocol MainCoordinatorProtocol: Coordinator {
  func showChannelDetails(members: [SBDMember])
}

class MainCoordinator: MainCoordinatorProtocol {
  
  weak var delegate: CoordinatorDelegate?
  var navigationController: UINavigationController
  var childCoordinators: [Coordinator] = []
  
  required init(_ navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start(flow: CoordinatorFlow) {
    switch flow {
    case .main:
      print("Go to main flow")
    case .channelDetails(let members):
      showChannelDetails(members: members)
    }
  }
  
  func showChannelDetails(members: [SBDMember]) {
    
    let channelDetailsViewController = ChannelDetailsViewController(with: ChannelDetailsViewModel(members: members))
    channelDetailsViewController.coordinator = self
    
    navigationController.pushViewController(channelDetailsViewController, animated: true)
  }
  
}

extension MainCoordinator: CoordinatorDelegate {
  func coordinatorDidFinish(childCoordinator: Coordinator) {
//    childCoordinators = childCoordinators.filter {
//      // $0.flow != childCoordinator.flow
//    }
  }
}
