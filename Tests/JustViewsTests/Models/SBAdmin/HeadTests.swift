//
//  HeadTests.swift
//  JustViewsTests
//
//  Created by Terrick Mansur on 29/10/2019.
//

import Foundation
import XCTest

@testable import JustViews

final class HeadTests: XCTestCase {
    func testHeadTitle() {
        let head = Head(title: "Some title")
        XCTAssert(head.title == "Some title")
    }
}
