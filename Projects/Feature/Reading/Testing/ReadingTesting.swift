//
//  ReadingTesting.swift
//  ReadingTesting
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import ReadingInterface

// 테스트용 Mock 구현
public struct MockReading: ReadingProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockReading is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct ReadingTestData {
    public static let sampleData = "Test Data"
}



