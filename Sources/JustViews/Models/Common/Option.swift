//
//  File.swift
//  
//
//  Created by Terrick Mansur on 12/02/2020.
//

import Foundation

extension JustViews.SBAdmin {
    public struct Option: Codable  {
        let value: String
        let display: String
        public init(value: String, display: String) {
            self.value = value
            self.display = display
        }
    }
}
