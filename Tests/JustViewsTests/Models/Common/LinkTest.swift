//
//  LinkTest.swift
//  JustViews
//
//  Created by Terrick Mansur on 29/10/2019.
//

import Foundation
import XCTest

@testable import JustViews

final class Tests: XCTestCase {
    func testLinkInitializerIsCorrect() {
        let link = Link(name: "Link Name", link: "http://example.com/")
        XCTAssert(link.name == "Link Name")
        XCTAssert(link.link == "http://example.com/")
    }
}
