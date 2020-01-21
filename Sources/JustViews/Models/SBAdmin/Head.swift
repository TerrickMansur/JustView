//
//  Head.swift
//  JustViewsTests
//
//  Created by Terrick Mansur on 29/10/2019.
//

import Foundation

extension JustViews.SBAdmin {
    public struct Head: Codable {
        let title: String
        let publicFilesLocation: String
        
        public init(title: String, publicFilesLocation: String) {
            self.title = title
            self.publicFilesLocation = publicFilesLocation
        }
    }
}
