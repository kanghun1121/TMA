//
//  Project+Templates.swift
//  ProjectDescriptionHelpers
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription

public extension Project {
    static func make(
        name: String,
        target: [Target],
        scheme: [Scheme]
    ) -> Self {
        return .init(name: name, targets: target, schemes: scheme)
    }
    
    static func featureSettings() -> Settings {
        return .settings(configurations: [
            .debug(name: "Debug", xcconfig: "../../../Configs/debug.xcconfig"),
            .release(name: "Release", xcconfig: "../../../Configs/release.xcconfig"),
            .debug(name: "Test", xcconfig: "../../../Configs/test.xcconfig")
        ])
    }
    
    static func featureSchemes(_ module: Module.Feature) -> [Scheme] {
        let targetName = module.rawValue
        return [
            .scheme(
                name: "debug",
                buildAction: .buildAction(targets: [.target(targetName)]),
                runAction: .runAction(configuration: "Debug")
            ),
            .scheme(
                name: "test",
                buildAction: .buildAction(targets: [.target(targetName)]),
                runAction: .runAction(configuration: "Test")
            )
        ]
    }
}

