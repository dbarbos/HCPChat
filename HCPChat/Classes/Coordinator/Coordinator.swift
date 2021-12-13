//
//  Coordinator.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import UIKit
import SendBirdSDK

public enum CoordinatorFlow {
  case main, channelDetails(members: [SBDUser])
}

protocol CoordinatorDelegate: AnyObject {
  func coordinatorDidFinish(childCoordinator: Coordinator)
}

protocol Coordinator: AnyObject {
  
  var delegate: CoordinatorDelegate? { get set }
  var navigationController: UINavigationController { get set }
  var childCoordinators: [Coordinator] { get set }
  var flow: CoordinatorFlow { get }
  
  func start()
  func finish()
  
  init(_ navigationController: UINavigationController)
}

extension Coordinator {
  func finish() {
    childCoordinators.removeAll()
    delegate?.coordinatorDidFinish(childCoordinator: self)
  }
}
