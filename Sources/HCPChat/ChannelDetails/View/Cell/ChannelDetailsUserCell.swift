//
//  ChannelDetailsUserCell.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import UIKit

@objc(SPMChannelDetailsUserCell)
class ChannelDetailsUserCell: UITableViewCell {
  
   @IBOutlet weak var avatarImageView: UIImageView!
   @IBOutlet weak var nameLabel: UILabel!
   @IBOutlet weak var rolesStackView: UIStackView!
   @IBOutlet weak var actionButton: UIButton!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func configure(user: ChannelDetailsUser) {
    
    self.reloadInputViews()
    self.layoutSubviews()
    self.awakeFromNib()
    
    nameLabel.text = user.name
    user.roles.forEach { role in
      if let value = role.value {
        rolesStackView.addArrangedSubview(roleView(value))
      }
    }
  }
  
  private func roleView(_ role: String) -> UILabel {
    let label = UILabel()
    label.text = role
    label.backgroundColor = .gray
    label.layer.cornerRadius = 6
    label.layer.masksToBounds = true
    return label
  }
  
  @IBAction func didTapActionButton(_ sender: Any) {
    print("Action!")
  }
  
}
