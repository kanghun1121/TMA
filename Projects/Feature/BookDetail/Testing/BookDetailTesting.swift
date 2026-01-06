//
//  BookDetailTesting.swift
//  BookDetailTesting
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import BookDetailInterface

// 테스트용 Mock 구현
public struct MockBookDetail: BookDetailProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockBookDetail is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct BookDetailTestData {
    public static let sampleData = "Test Data"
}



