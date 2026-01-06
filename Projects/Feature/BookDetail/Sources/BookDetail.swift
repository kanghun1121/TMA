//
//  BookDetail.swift
//  BookDetail
//
//  Created by 강대훈 on 12/30/25.
//

import Foundation
import BookDetailInterface

public struct BookDetail: BookDetailProtocol {
    public init() {}
    
    public func doSomething() {
        print("BookDetail is working")
    }
}
