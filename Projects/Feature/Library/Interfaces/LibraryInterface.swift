//
//  LibraryInterface.swift
//  LibraryInterface
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation

// 외부에 공개할 API 정의
public protocol LibraryProtocol {
    func doSomething()
}

public struct LibraryInterface {
    public init() {}
    
    public func doSomething() {
        print("LibraryInterface is working")
    }
}



