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
                case form(form: JustViews.SBAdmin.Form)
                
                var type: String {
                    switch self {
                    case .form: return "form"
                    case .table: return "table"
                    }
                }
            }
            
            let table: Table?
            let form: Form?
            let type: String
            
            public init(component: Compenent) {
                self.type = component.type
                switch component {
                case .table(let table):
                    self.table = table
                    self.form = nil
                case .form(let form):
                    self.form = form
                    self.table = nil
                }
            }
        }

        public let rows: [[Container]]
        
        public init(rows: [[Container]]) {
             self.rows = rows
        }
    }
}
