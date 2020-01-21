//
//  headTests.swift
//  JustViewsTests
//
//  Created by Terrick Mansur on 29/10/2019.
//

import Foundation
import XCTest
import TemplateKit
import Leaf

@testable import JustViews

final class headTests: XCTestCase {
    func testHeadHtml() {
        
        let tagConfig = LeafConfig(
            tags: LeafTagConfig.default(),
            viewsDir: "",
            shouldCache: false)
        
        let worker = MultiThreadedEventLoopGroup.init(numberOfThreads: 1)

        let containerConfig = Config()
        let container = BasicContainer(
            config: containerConfig,
            environment: .testing,
            services: Services(),
            on: worker)
        
        let b = LeafRenderer(config: tagConfig, using: container)
        b.render
        let look = b.render("footer", userInfo: [:])

        let v = look.flatMap(to: Response.self) { view in
            return view
        }

        XCTAssert( "1" == "")
    }
}
