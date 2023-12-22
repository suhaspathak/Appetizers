//
//  UserDetail.swift
//  Appetizers
//
//  Created by Suhas Pathak on 22/12/23.
//

import Foundation

struct UserDetail: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
