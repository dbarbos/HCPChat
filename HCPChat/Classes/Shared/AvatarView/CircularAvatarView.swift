//
//  CircularAvatarView.swift
//  HCPChat
//
//  Created by Dilermando Barbosa Junior on 13/12/21.
//

import UIKit
import SDWebImage

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
  
  private var imageUrl: String = "" {
    didSet {
      avatarImageView.sd_setImage(with: URL(string: imageUrl), placeholderImage: UIImage(named: "", in: HCPChat.bundle, compatibleWith: nil), options: [], context: nil)
    }
  }
  private var userName: String = ""
  
  class func from(_ url: String, state: State = .loading, userName: String) -> CircularAvatarView {
    let customView = UINib(nibName: "CircularAvatarView", bundle: HCPChat.bundle).instantiate(withOwner: self, options: nil).first as! CircularAvatarView
    customView.initialsLabel.text = userName.initials()
    customView.clipsToBounds = true
    customView.layer.cornerRadius = customView.frame.size.height / 2
    
    customView.state = state
    
    return customView
  }
}
