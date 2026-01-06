//
//  ReadingInterface.swift
//  ReadingInterface
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation

// 외부에 공개할 API 정의
public protocol ReadingProtocol {
    func doSomething()
}

public struct ReadingInterface {
    public init() {}
    
    public func doSomething() {
        print("ReadingInterface is working")
    }
}



