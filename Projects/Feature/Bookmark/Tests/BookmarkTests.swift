//
//  BookmarkTests.swift
//  BookmarkTests
//
//  Created by 강대훈 on 12/30/25.
//

import XCTest
@testable import Bookmark
@testable import BookmarkTesting

final class BookmarkTests: XCTestCase {
    func testBookmark() {
        let bookmark = Bookmark()
        bookmark.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockBookmark() {
        let mockBookmark = MockBookmark()
        mockBookmark.doSomething()
        XCTAssertTrue(true)
    }
}



