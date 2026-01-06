//
//  Modules.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

public enum Module {
    case app
    case feature(Feature)
}

public extension Module {
    enum Feature: String, CaseIterable {
        case book = "Book"
        case settings = "Settings"
        case bookDetail = "BookDetail"
        case bookmark = "Bookmark"
        case library = "Library"
        case reading = "Reading"
        case search = "Search"
    }
}
