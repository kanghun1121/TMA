//
//  BookDetailTests.swift
//  BookDetailTests
//
//  Created by 강대훈 on 12/30/25.
//

import XCTest
@testable import BookDetail
@testable import BookDetailTesting

final class BookDetailTests: XCTestCase {
    func testBookDetail() {
        let bookDetail = BookDetail()
        bookDetail.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockBookDetail() {
        let mockBookDetail = MockBookDetail()
        mockBookDetail.doSomething()
        XCTAssertTrue(true)
    }
}



