//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.bookmark.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .bookmark),
        .feature(.bookmark),
        .feature(testing: .bookmark),
        .feature(tests: .bookmark),
        .feature(example: .bookmark)
    ]
)
