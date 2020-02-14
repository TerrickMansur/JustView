//
//  File.swift
//  
//
//  Created by Terrick Mansur on 22/01/2020.
//

import Foundation

extension JustViews.SBAdmin {
    
    public struct Form: Codable {
        
        public enum ButtonTypes: String {
            case constructive
            case destructive
        }

        public enum Input {
            case text(id: String, type: String, placeholder: String, value: String, readOnly: Bool)
            case select(name: String, options: [Option], readOnly: Bool)
            case submit(value: String, style: ButtonTypes)
            
            fileprivate func toRaw() -> InputRaw {

                switch self {
                case .text(let id, let type, let placeholder, let value, let readOnly):
                    return InputRaw(
                        kind: "text",
                        id: id,
                        type: type,
                        name: "",
                        placeholder: placeholder,
                        value: value,
                        readOnly: (readOnly ? "readonly" : ""),
                        options: [])
                case .select(let name, let options, let readOnly):
                    return InputRaw(
                        kind: "select",
                        id: "",
                        type: "",
                        name: name,
                        placeholder: "",
                        value: "",
                        readOnly: (readOnly ? "disabled" : ""),
                        options: options)
                case .submit(let value, let style):
                    return InputRaw(
                        kind: "submit",
                        id: "",
                        type: style.rawValue,
                        name: "",
                        placeholder: "",
                        value: value,
                        readOnly: "",
                        options: [])
                }

            }
        }
        
        public struct InputRaw: Codable {
            public let kind: String
            public let id: String
            public let type: String
            public let name: String
            public let placeholder: String
            public let value: String
            public let readOnly: String
            public let options: [Option]
        }
        
        // MARK: Component
        public let type = "form"
        
        public let title: String
        public let method: String
        public let action: String

        public let rows: [[InputRaw]]
        
        public init(title: String, method: String, action: String, rows: [[Input]]) {
            self.title = title
            self.method = method
            self.action = action
            self.rows = rows.map { row in
                row.map { $0.toRaw() }
            }
        }
    }
}
