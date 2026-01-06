//
//  BookmarkTesting.swift
//  BookmarkTesting
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import BookmarkInterface

// 테스트용 Mock 구현
public struct MockBookmark: BookmarkProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockBookmark is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct BookmarkTestData {
    public static let sampleData = "Test Data"
}



