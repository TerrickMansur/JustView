//
//  SideMenu.swift
//  App
//
//  Created by Terrick Mansur on 8/15/19.
//

import Foundation

extension JustViews.SBAdmin {

    public struct SideMenu: Codable {
        
        public enum MenuItem {
            case divider(withBottomSpacing: Bool)
            case header(header: String)
            case link(fasIcon: String, link: Link)
            case collapseSubmenu(fasIcon: String, title: String, subMenuHeader: String, subMenus: [Links])
            func toData() -> Data {
                switch self {
                case .divider(let withBottomSpacing):
                    return Data(caseValue: 0, primaryData: withBottomSpacing ? "1" : "0")
                case .header(let header):
                    return Data(caseValue: 1, primaryData: header)
                case .link(let fasIcon, let link):
                    return Data(
                        caseValue: 2,
                        primaryData: fasIcon,
                        secondaryData: link.name,
                        thirdaryData: link.url,
                        forthdaryData: link.alt,
                        fithdaryData: link.active ? " active" : "")
                case .collapseSubmenu(let fasIcon, let title, let subMenuHeader, let links):
                    return Data(
                        caseValue: 3,
                        primaryData: fasIcon,
                        secondaryData: title,
                        thirdaryData: subMenuHeader,
                        linksData: links)
                }
            }
            
            struct Data: Codable {
                let caseValue: Int
                let primaryData: String?
                let secondaryData: String?
                let thirdaryData: String?
                let forthdaryData: String?
                let fithdaryData: String?
                let linksData: [Links]?
                
                init(caseValue: Int,
                     primaryData: String? = nil,
                     secondaryData: String? = nil,
                     thirdaryData: String? = nil,
                     forthdaryData: String? = nil,
                     fithdaryData: String? = nil,
                     linksData: [Links]? = nil) {
                    self.caseValue = caseValue
                    self.primaryData = primaryData
                    self.secondaryData = secondaryData
                    self.thirdaryData = thirdaryData
                    self.forthdaryData = forthdaryData
                    self.fithdaryData = fithdaryData
                    self.linksData = linksData
                }
            }
        }
        
        // Home link/icon
        let topHomeIcon: String
        let topHomeIconRotation: Int
        let topHomeTitle: String
        let topHomeTitleSub: String
        let topHomeLink: String

        // Menu content
        let menuItems: [MenuItem.Data]
        
        public init(
            topHomeIcon: String,
            topHomeIconRotation: Int,
            topHomeTitle: String,
            topHomeTitleSub: String,
            topHomeLink: String,
            menuItems: [MenuItem]) {
            self.topHomeIcon = topHomeIcon
            self.topHomeIconRotation = topHomeIconRotation
            self.topHomeTitle = topHomeTitle
            self.topHomeTitleSub = topHomeTitleSub
            self.topHomeLink = topHomeLink
            self.menuItems = menuItems.map { $0.toData() }
        }
    }
}
