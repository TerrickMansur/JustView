//
//  File.swift
//  
//
//  Created by Terrick Mansur on 24/10/2019.
//

import Foundation

public struct Links: Codable {
    let title: String
    let links: [Link]
    
    public init(title: String, links: [Link]) {
        self.title = title
        self.links = links
    }
}
