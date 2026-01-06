//
//  Book.swift
//  Book
//
//  Created by 강대훈.
//

import Foundation
import BookInterface

public struct Book: BookProtocol {
    public init() {}
    
    public func doSomething() {
        print("Book is working")
    }
}

