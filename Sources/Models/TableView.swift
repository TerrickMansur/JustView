//
//  TableView.swift
//  App
//
//  Created by Terrick Mansur on 9/7/19.
//

import Foundation

struct Row: Codable {
    let datas: [String]
}

struct Column: Codable {
    let name: String
}

struct TableView: Codable {
    let name: String
    let columns: [Column]
    let rows: [Row]
    let show: Int
    let showingFrom: Int
    let showingTo: Int
    let totalEntries: Int
    let pages: [Link]
}
