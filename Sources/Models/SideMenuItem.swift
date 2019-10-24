//
//  side_menu_item.swift
//  App
//
//  Created by Terrick Mansur on 8/15/19.
//

import Foundation

struct Link: Codable {
    let name: String
    let link: String
}

extension Atoms {
    static func dashBoardLink(root: String = "") -> Link {
        return Link(name: "Dashboard", link: "\(root)dashboard")
    }

    static func categoriesLink(root: String = "") -> Link {
        return Link(name: "Categories", link: "\(root)categories")
    }

    static func logoutLink(root: String = "") -> Link {
        return Link(name: "Logout", link: "\(root)logout")
    }
}
