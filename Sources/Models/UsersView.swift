//
//  Users.swift
//  App
//
//  Created by Terrick Mansur on 8/16/19.
//

import Foundation

struct UsersView: Codable {

    let heading: String = "Users"
    let description: String = "All user"

    let frame: Frame
    let usersTable: UsersTable
    
    init(user: User, usersTable: UsersTable) {
        self.frame = Molucules.frame(user: user)
        self.usersTable = usersTable
    }
}

extension Views {
    
    static func users(user: User, usersTable: UsersTable) -> UsersView {
        return UsersView(user: user, usersTable: usersTable)
    }
}
