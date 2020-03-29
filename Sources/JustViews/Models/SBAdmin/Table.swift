//
//  TableView.swift
//  App
//
//  Created by Terrick Mansur on 9/7/19.
//

import Foundation

extension JustViews.SBAdmin {
    
    public struct IconedLink: Codable {
        let fasIcon: String
        let link: Link
        
        public init(fasIcon: String, link: Link) {
            self.fasIcon = fasIcon
            self.link = link
        }
    }
    
    public struct Row: Codable {
        let datas: [String]
        
        public init(datas: [String]) {
            self.datas = datas
        }
    }

    public struct Table: Codable {

        public let id: String
        public let name: String
        public let columns: [String]
        public let rows: [Row]
        public let actions: [IconedLink]

        // MARK: Component
        public var type: String = "table"
        
        public init(id: String, name: String, columns: [String], rows: [Row], actions: [IconedLink] = []) {
            self.id = id
            self.name = name
            self.columns = columns
            self.rows = rows
            self.actions = actions
        }
    }

}
