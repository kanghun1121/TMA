//
//  SettingsInterface.swift
//  SettingsInterface
//
//  Created by 강대훈.
//

import Foundation

// 외부에 공개할 API 정의
public protocol SettingsProtocol {
    func doSomething()
}

public struct SettingsInterface {
    public init() {}
    
    public func doSomething() {
        print("SettingsInterface is working")
    }
}

