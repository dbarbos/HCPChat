//
//  MainCoordinator.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

protocol MainCoordinatorProtocol: Coordinator {
  func showChannelDetails()
}

class MainCoordinator: MainCoordinatorProtocol {
  
  weak var delegate: CoordinatorDelegate?
  var navigationController: UINavigationController
  var childCoordinators: [Coordinator] = []
  var flow: CoordinatorFlow { .main }
  
  required init(_ navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    showChannelDetails()
  }
  
  func showChannelDetails() {
    
    let channelDetailsCoordinator = ChannelDetailsCoordinator(navigationController)
    channelDetailsCoordinator.delegate = self
    channelDetailsCoordinator.start()
    childCoordinators.append(channelDetailsCoordinator)
    
  }
  
}

extension MainCoordinator: CoordinatorDelegate {
  func coordinatorDidFinish(childCoordinator: Coordinator) {
    childCoordinators = childCoordinators.filter {
      $0.flow != childCoordinator.flow
    }
  }
}
