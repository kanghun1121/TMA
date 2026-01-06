//
//  Project.swift
//  Manifests
//
//  Created by 강대훈.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.book.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .book),
        .feature(.book),
        .feature(testing: .book),
        .feature(tests: .book),
        .feature(example: .book)
    ]
)

