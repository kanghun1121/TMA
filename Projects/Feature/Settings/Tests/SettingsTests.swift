//
//  SettingsTests.swift
//  SettingsTests
//
//  Created by 강대훈.
//

import XCTest
@testable import Settings
@testable import SettingsTesting

final class SettingsTests: XCTestCase {
    func testSettings() {
        let settings = Settings()
        settings.doSomething()
        XCTAssertTrue(true)
    }
    
    func testMockSettings() {
        let mockSettings = MockSettings()
        mockSettings.doSomething()
        XCTAssertTrue(true)
    }
}

