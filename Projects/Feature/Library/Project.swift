//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.library.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .library),
        .feature(.library),
        .feature(testing: .library),
        .feature(tests: .library),
        .feature(example: .library)
    ]
)
