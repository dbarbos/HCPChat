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
    let superMember = members.first
    print(superMember)
    print(superMember?.metaData)
    print(superMember?.role)
    print(superMember?.profileUrl)
    self.members = members.map { ChannelDetailsUser(avatarUrl: $0.profileUrl, name: $0.nickname, roles: [ChannelDetailsUserRole(value: "Admin"), ChannelDetailsUserRole(value: "Field Tech")]) }
  }
  
}
