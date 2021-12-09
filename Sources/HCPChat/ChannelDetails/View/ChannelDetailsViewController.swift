//
//  ChannelDetailsViewController.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

class ChannelDetailsViewController: UIViewController {
  
  var didCallEvent: ((ChannelDetailsViewController.Event) -> Void)?
  
  var coordinator: ChannelDetailsCoordinator?
  
  init() {
    super.init(nibName: "ChannelDetailsViewController", bundle: Bundle.module)
  }
  
  required init?(coder: NSCoder) {
      super.init(coder: coder)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
}

extension ChannelDetailsViewController {
  enum Event {
    case showMembers
  }
}
