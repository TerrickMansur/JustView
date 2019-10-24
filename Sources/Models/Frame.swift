//
//  Dashboard.swift
//  App
//
//  Created by Terrick Mansur on 8/15/19.
//

import Foundation

struct Frame: Codable {
    let title: String
    let sideMenu: Links
    let profileMenu: Links
    let websiteName: String
    let year: Int
    let user: User
    let root: String
}

extension Molucules {
 
    static func frame(user: User, root: String = "") -> Frame {
        
        let date = Date()
        let calendar = NSCalendar.current
        let year = calendar.component(.year, from: date)

        return Frame(
            title: "Arubook CMS",
            sideMenu: Molucules.sideMenu(root: root),
            profileMenu: Molucules.profileMenu(root: root),
            websiteName: "Arubook CMS",
            year: year,
            user: user,
            root: root)
    }
}
