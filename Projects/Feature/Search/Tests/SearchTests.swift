//
//  SearchTests.swift
//  SearchTests
//
//  Created by 강대훈 on 12/30/25.
//

import XCTest
@testable import Search
@testable import SearchTesting

final class SearchTests: XCTestCase {
    func testSearch() {
        let search = Search()
        search.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockSearch() {
        let mockSearch = MockSearch()
        mockSearch.doSomething()
        XCTAssertTrue(true)
    }
}



