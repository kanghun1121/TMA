//
//  Target+Templates.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription

public extension Target {
    static func feature(interface module: Module.Feature) -> Self {
        return .target(
            name: module.rawValue + "Interface",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.chis" + ".\(module.rawValue.lowercased()).interface",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: ["Interfaces/**"],
            dependencies: []
        )
    }
    
    static func feature(_ module: Module.Feature) -> Self {
        return .target(
            name: module.rawValue,
            destinations: .iOS,
            product: .framework,
            bundleId: "com.chis" + ".\(module.rawValue.lowercased())",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: ["Sources/**"],
            dependencies: [
                .target(name: module.rawValue + "Interface")
            ]
        )
    }
    
    static func feature(testing module: Module.Feature) -> Self {
        return .target(
            name: module.rawValue + "Testing",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.chis" + ".\(module.rawValue.lowercased()).testing",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: ["Testing/**"],
            dependencies: [
                .target(name: module.rawValue + "Interface")
            ]
        )
    }
    
    static func feature(tests module: Module.Feature) -> Self {
        return .target(
            name: module.rawValue + "Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.chis" + ".\(module.rawValue.lowercased()).tests",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [
                .target(name: module.rawValue),
                .target(name: module.rawValue + "Testing")
            ]
        )
    }
    
    static func feature(example module: Module.Feature) -> Self {
        return .target(
            name: module.rawValue + "Example",
            destinations: .iOS,
            product: .app,
            bundleId: "com.chis" + ".\(module.rawValue.lowercased()).example",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "API_KEY": "$(API_KEY)"
                ]
            ),
            sources: ["Example/Sources/**"],
            resources: ["Example/Resources/**"],
            dependencies: [
                .target(name: module.rawValue)
            ]
        )
    }
}
