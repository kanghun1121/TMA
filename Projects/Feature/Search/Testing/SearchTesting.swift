//
//  SearchTesting.swift
//  SearchTesting
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import SearchInterface

// 테스트용 Mock 구현
public struct MockSearch: SearchProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockSearch is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct SearchTestData {
    public static let sampleData = "Test Data"
}



