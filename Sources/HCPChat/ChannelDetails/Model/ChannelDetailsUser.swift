//
//  File.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import Foundation

struct ChannelDetailsUser: Decodable {
  let avatarUrl: String?
  let name: String?
  let roles: [ChannelDetailsUserRole]
}
