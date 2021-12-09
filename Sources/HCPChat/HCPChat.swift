import UIKit

public struct HCPChat {
  static let featureIdentifier = "HCPChat"

  static public func start(flow: CoordinatorFlow = .channelDetails, from navigationController: UINavigationController) {
    let mainCoordinator = MainCoordinator(navigationController)
    mainCoordinator.start()
  }
  
  public static let bundle: Bundle? = {
      let bundle = Bundle.main
      let path = "\(bundle.bundlePath)/\(featureIdentifier).bundle"
      return Bundle(path: path)
  }()
}
