//
//  File.swift
//  
//
//  Created by Dilermando Barbosa Junior on 09/12/21.
//

import Foundation

public struct ChannelDetailsUser: Decodable {
  let userId: String?
  let nickname: String?
  let profileUrl: String?
  let roles: [String]?
  let customerId: String?
  
  public init(userId: String?, nickname: String?, profileUrl: String?, roles: [String]?, customerId: String?) {
    self.userId = userId
    self.nickname = nickname
    self.profileUrl = profileUrl
    self.roles = roles
    self.customerId = customerId
  }
}
