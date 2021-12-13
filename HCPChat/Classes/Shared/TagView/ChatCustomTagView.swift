//
//  ChatCustomTagView.swift
//  HCPChat
//
//  Created by Dilermando Barbosa Junior on 13/12/21.
//

import UIKit

class ChatCustomTagView: UIView {
  
  @IBOutlet weak var title: UILabel!
  @IBOutlet weak var tagView: UIView!
  
  class func withTag(_ text: String) -> ChatCustomTagView {
    let customView = UINib(nibName: "ChatCustomTagView", bundle: HCPChat.bundle).instantiate(withOwner: self, options: nil).first as! ChatCustomTagView
    customView.title.text = text
    customView.tagView.layer.masksToBounds = true
    customView.tagView.layer.cornerRadius = 12
    return customView
  }
  
}
