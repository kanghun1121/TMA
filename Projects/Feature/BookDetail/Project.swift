//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.bookDetail.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .bookDetail),
        .feature(.bookDetail),
        .feature(testing: .bookDetail),
        .feature(tests: .bookDetail),
        .feature(example: .bookDetail)
    ]
)
