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
    avatarImageView.addSubview(CircularAvatarView.from(user.avatarUrl ?? "", userName: user.name ?? ""))
    nameLabel.text = user.name
    user.roles.forEach { role in
      if let value = role.value {
        rolesStackView.addArrangedSubview(ChatCustomTagView.withTag(value))
      }
    }
  }
  
  @IBAction func didTapActionButton(_ sender: Any) {
    print("Action!")
  }
}
