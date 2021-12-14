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
  
  private var imageUrl: String = "" {
    didSet {
      avatarImageView.sd_setImage(with: URL(string: imageUrl), placeholderImage: UIImage(named: "profile-placeholder", in: HCPChat.bundle, compatibleWith: nil), options: SDWebImageOptions.retryFailed) { [weak self] _, error, _, _ in
        if let error = error {
          self?.avatarImageView.isHidden = true
        }
      }
    }
  }
  
  private var userName: String = ""
  
  class func from(_ url: String, userName: String) -> CircularAvatarView {
    let customView = UINib(nibName: "CircularAvatarView", bundle: HCPChat.bundle).instantiate(withOwner: self, options: nil).first as! CircularAvatarView
    customView.initialsLabel.text = userName.initials()
    customView.initialsLabel.backgroundColor = .lightGray
    customView.clipsToBounds = true
    customView.layer.cornerRadius = customView.frame.size.height / 2
    
    customView.imageUrl = url
    
    return customView
  }
}
