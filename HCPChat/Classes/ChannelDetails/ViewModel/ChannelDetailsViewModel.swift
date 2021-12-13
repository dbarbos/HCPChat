//
//  ChannelDetailsViewModel.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import Foundation


class ChannelDetailsViewModel {
  
  var users: [ChannelDetailsUser] = [
    ChannelDetailsUser(avatarUrl: "", name: "Dilermando Barbosa", roles: [ChannelDetailsUserRole(value: "Admin"), ChannelDetailsUserRole(value: "Field Tech")]),
    ChannelDetailsUser(avatarUrl: "", name: "Uke Jain", roles: [ChannelDetailsUserRole(value: "Field Tech")])
  ]
  
}
