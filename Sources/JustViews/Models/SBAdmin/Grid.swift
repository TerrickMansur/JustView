//
//  File.swift
//  
//
//  Created by Terrick Mansur on 17/01/2020.
//

import Foundation


extension JustViews.SBAdmin {

    public struct Grid: Codable {
        
        public struct Container: Codable {
            public enum Compenent {
                case table(table: JustViews.SBAdmin.Table)
            }
            
            let table: Table?
            
            public init(component: Compenent) {
                switch component {
                case .table(let table):
                    self.table = table
                }
            }
        }

        public let rows: [[Container]]
        
        public init(rows: [[Container]]) {
             self.rows = rows
        }
    }
}
