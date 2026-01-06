//
//  BookTesting.swift
//  BookTesting
//
//  Created by 강대훈.
//

import Foundation
import BookInterface

// 테스트용 Mock 구현
public struct MockBook: BookProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockBook is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct BookTestData {
    public static let sampleData = "Test Data"
}

