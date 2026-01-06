//
//  Settings.swift
//  Settings
//
//  Created by 강대훈.
//

import Foundation
import SettingsInterface

public struct Settings: SettingsProtocol {
    public init() {}
    
    public func doSomething() {
        print("Settings is working")
    }
}

