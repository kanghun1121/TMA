//
//  BookTests.swift
//  BookTests
//
//  Created by 강대훈.
//

import XCTest
@testable import Book
@testable import BookTesting

final class BookTests: XCTestCase {
    func testBook() {
        let book = Book()
        book.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockBook() {
        let mockBook = MockBook()
        mockBook.doSomething()
        XCTAssertTrue(true)
    }
}

