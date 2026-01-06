//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: Module.Feature.reading.rawValue,
    settings: Project.featureSettings(),
    targets: [
        .feature(interface: .reading),
        .feature(.reading),
        .feature(testing: .reading),
        .feature(tests: .reading),
        .feature(example: .reading)
    ]
)
