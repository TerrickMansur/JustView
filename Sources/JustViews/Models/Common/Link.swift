//
//  side_menu_item.swift
//  App
//
//  Created by Terrick Mansur on 8/15/19.
//

import Foundation

public struct Link: Codable {
    let name: String
    let alt: String
    let url: String
    let active: Bool
    
    public init(name: String, alt: String, url: String, active: Bool = false) {
        self.name = name
        self.alt = alt
        self.url = url
        self.active = active
    }
}
