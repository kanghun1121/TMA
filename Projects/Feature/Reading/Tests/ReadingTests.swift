//
//  ReadingTests.swift
//  ReadingTests
//
//  Created by 강대훈 on 12/30/25.
//

import XCTest
@testable import Reading
@testable import ReadingTesting

final class ReadingTests: XCTestCase {
    func testReading() {
        let reading = Reading()
        reading.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockReading() {
        let mockReading = MockReading()
        mockReading.doSomething()
        XCTAssertTrue(true)
    }
}



