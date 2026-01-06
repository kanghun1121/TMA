//
//  LibraryTests.swift
//  LibraryTests
//
//  Created by 강대훈 on 12/30/25.
//

import XCTest
@testable import Library
@testable import LibraryTesting

final class LibraryTests: XCTestCase {
    func testLibrary() {
        let library = Library()
        library.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockLibrary() {
        let mockLibrary = MockLibrary()
        mockLibrary.doSomething()
        XCTAssertTrue(true)
    }
}



