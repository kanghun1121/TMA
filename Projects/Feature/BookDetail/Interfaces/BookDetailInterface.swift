//
//  BookDetailInterface.swift
//  BookDetailInterface
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation

// 외부에 공개할 API 정의
public protocol BookDetailProtocol {
    func doSomething()
}

public struct BookDetailInterface {
    public init() {}
    
    public func doSomething() {
        print("BookDetailInterface is working")
    }
}



