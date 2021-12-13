//
//  CircularAvatarView.swift
//  HCPChat
//
//  Created by Dilermando Barbosa Junior on 13/12/21.
//

import UIKit

class CircularAvatarView: UIView {
  
  @IBOutlet weak var avatarImageView: UIImageView!
  @IBOutlet weak var initialsLabel: UILabel!
  
  enum State {
    case loading, image, text, error
  }
  
  private var state: State = .loading {
    didSet {
      switch state {
      case .loading:
        backgroundColor = .blue
      case .image:
        backgroundColor = .green
      case .text:
        backgroundColor = .purple
      case .error:
        backgroundColor = .red
      }
    }
  }
  
  private var imageUrl: String = ""
  private var userName: String = ""
  
//  required init(state: State = .loading, imageUrl: String, userName: String) {
//    self.state = state
//    self.imageUrl = imageUrl
//    self.userName = userName
//
//    super.init(frame: CGRect.zero)
//
//    self.clipsToBounds = true
//    self.layer.cornerRadius = self.frame.size.height / 2
//  }
//
//  required init?(coder: NSCoder) {
//    fatalError("init(coder:) has not been implemented")
//  }
  
  class func from(_ url: String, state: State = .loading, userName: String) -> CircularAvatarView {
    let customView = UINib(nibName: "CircularAvatarView", bundle: HCPChat.bundle).instantiate(withOwner: self, options: nil).first as! CircularAvatarView
    customView.initialsLabel.text = userName.initials()
    customView.clipsToBounds = true
    customView.layer.cornerRadius = customView.frame.size.height / 2
    
    customView.state = state
    
    return customView
  }
  
//  override func layoutSubviews() {
//    super.layoutSubviews()
//    self.layer.cornerRadius = self.frame.size.height / 2
//    self.clipsToBounds = true
//  }
}
