//
//  SideMenu.swift
//  App
//
//  Created by Terrick Mansur on 8/15/19.
//

import Foundation

extension Molucules {
    static func sideMenu(root: String = "") -> Links {
        return Links(links: [Atoms.dashBoardLink(root: root),
                             Atoms.categoriesLink(root: root)])
    }
    
    static func profileMenu(root: String = "") -> Links {
        return Links(links: [Atoms.logoutLink(root: root)])
    }
}
