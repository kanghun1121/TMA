//
//  SettingsTesting.swift
//  SettingsTesting
//
//  Created by 강대훈.
//

import Foundation
import SettingsInterface

// 테스트용 Mock 구현
public struct MockSettings: SettingsProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockSettings is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct SettingsTestData {
    public static let sampleData = "Test Data"
}

