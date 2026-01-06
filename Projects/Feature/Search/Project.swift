//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.search.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .search),
        .feature(.search),
        .feature(testing: .search),
        .feature(tests: .search),
        .feature(example: .search)
    ]
)
