////
////  Dashboard.swift
////  App
////
////  Created by Terrick Mansur on 8/15/19.
////

import Foundation

extension JustViews.SBAdmin {
    public struct Frame: Codable {
        let head: Head
        let sideMenu: SideMenu
        let tableIds: [String]
        let contentTitle: String
        let copyrightText: String

        public init(head: Head, sideMenu: SideMenu, tableIds: [String], contentTitle: String, copyrightText: String) {
            self.head = head
            self.sideMenu = sideMenu
            self.tableIds = tableIds
            self.contentTitle = contentTitle
            self.copyrightText = copyrightText
        }
    }
}

