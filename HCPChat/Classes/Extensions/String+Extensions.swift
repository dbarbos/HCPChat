//
//  String+Extensions.swift
//  HCPChat
//
//  Created by Dilermando Barbosa Junior on 13/12/21.
//

import Foundation

extension String {
  func initials() -> String? {
    let formatter = PersonNameComponentsFormatter()
    guard let personComponents = formatter.personNameComponents(from: self) else { return nil }
    return personComponents.initials()
  }
}

extension PersonNameComponents {
  func initials() -> String {
    let firstName = givenName?.first ?? Character(" ")
    let lastName = familyName?.first ?? Character(" ")
    return "\(firstName)\(lastName)".trimmingCharacters(in: .whitespaces)
  }
}
