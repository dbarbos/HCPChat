//
//  ChannelDetailsViewModel.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import Foundation
import SendBirdSDK

class ChannelDetailsViewModel {
  
  var members: [ChannelDetailsUser]
  
  init(members: [SBDMember]) {
    self.members = members.map { ChannelDetailsUser(avatarUrl: $0.profileUrl, name: $0.nickname, roles: [ChannelDetailsUserRole(value: "Admin")]) }
  }
  
}
