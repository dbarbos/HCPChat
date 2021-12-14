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
  
  init(members: [ChannelDetailsUser]) {
    self.members = members
  }
  
}
