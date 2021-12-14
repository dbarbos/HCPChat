//
//  ChannelDetailsUserCell.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import UIKit

class ChannelDetailsUserCell: UITableViewCell {
  
   @IBOutlet weak var avatarImageView: UIView!
   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var rolesStackView: UIStackView!
   @IBOutlet weak var actionButton: UIButton!
  
  func configure(user: ChannelDetailsUser) {
    avatarImageView.addSubview(CircularAvatarView.from(user.profileUrl ?? "", userName: user.nickname ?? ""))
    nameLabel.text = user.nickname
    if let roles = user.roles {
      roles.forEach { role in
        rolesStackView.addArrangedSubview(ChatCustomTagView.withTag(role))
      }
      //if roles.contains("Customer") { // Will hide button for now, feature to be implemented on next release
        actionButton.isHidden = true
      //}
    }
  }
  
  @IBAction func didTapActionButton(_ sender: Any) {
    print("Action!")
  }
}
