//
//  Project.swift
//  Manifests
//
//  Created by 강대훈.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.settings.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .settings),
        .feature(.settings),
        .feature(testing: .settings),
        .feature(tests: .settings),
        .feature(example: .settings)
    ]
)

