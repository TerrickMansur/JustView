//
//  File.swift
//  
//
//  Created by Terrick Mansur on 25/11/2019.
//

import Foundation

struct World {

    static let shared = World()

    var vendorFilesLocation: String = ""
    
    private init() {}
}
