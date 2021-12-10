import UIKit

public struct HCPChat {
  
  static public func start(flow: CoordinatorFlow = .channelDetails, from navigationController: UINavigationController) {
    
    let mainCoordinator = MainCoordinator(navigationController)
    mainCoordinator.start()
  }
}
