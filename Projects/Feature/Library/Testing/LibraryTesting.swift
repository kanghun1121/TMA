//
//  LibraryTesting.swift
//  LibraryTesting
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import LibraryInterface

// 테스트용 Mock 구현
public struct MockLibrary: LibraryProtocol {
    public init() {}
    
    public func doSomething() {
        print("MockLibrary is working")
    }
}

// 테스트 데이터 및 헬퍼 함수
public struct LibraryTestData {
    public static let sampleData = "Test Data"
}



