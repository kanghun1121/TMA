//
//  SearchInterface.swift
//  SearchInterface
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation

// 외부에 공개할 API 정의
public protocol SearchProtocol {
    func doSomething()
}

public struct SearchInterface {
    public init() {}
    
    public func doSomething() {
        print("SearchInterface is working")
    }
}



