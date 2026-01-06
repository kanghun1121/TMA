//
//  BookInterface.swift
//  BookInterface
//
//  Created by 강대훈.
//

import Foundation

// 외부에 공개할 API 정의
public protocol BookProtocol {
    func doSomething()
}

public struct BookInterface {
    public init() {}
    
    public func doSomething() {
        print("BookInterface is working")
    }
}

