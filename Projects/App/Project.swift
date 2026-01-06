//
//  Project.swift
//  Manifests
//
//  Created by 강대훈 on 12/30/25.
//

import ProjectDescription

let project = Project(
    name: "App",
    settings: .settings(configurations: [
        .release(name: "Release", xcconfig: "../../Configs/release.xcconfig"),
        .debug(name: "Debug", xcconfig: "../../Configs/debug.xcconfig"),
        .debug(name: "Test", xcconfig: "../../Configs/test.xcconfig")
    ]),
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "com.chis.app",
            deploymentTargets: .iOS("17.0"),
            infoPlist: .extendingDefault(
                with: [
                    "API_KEY": "$(API_KEY)",
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "Book", path: "../Feature/Book"),
                .project(target: "Settings", path: "../Feature/Settings"),
                .project(target: "Library", path: "../Feature/Library"),
                .project(target: "Search", path: "../Feature/Search"),
                .project(target: "BookDetail", path: "../Feature/BookDetail"),
                .project(target: "Reading", path: "../Feature/Reading"),
                .project(target: "Bookmark", path: "../Feature/Bookmark")
            ]
        )
    ],
    schemes: [
        .scheme(
            name: "debug",
            buildAction: .buildAction(targets: [.target("App")]),
            runAction: .runAction(configuration: "Debug")
        ),
        .scheme(
            name: "release",
            buildAction: .buildAction(targets: [.target("App")]),
            runAction: .runAction(configuration: "Release")
        ),
        .scheme(
            name: "test",
            buildAction: .buildAction(targets: [.target("App")]),
            runAction: .runAction(configuration: "Test")
        )
    ]
)

//let project = Project(
//
//    name: "Hearym",
//
//    packages: [
//
//        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.20.2"),
//
//        .local(path: "../Core/Extensions"),
//
//        .local(path: "../Core/LocalStorage"),
//
//        .local(path: "../UI/ViewModel"),
//
//        .local(path: "../UI/BrickLayout"),
//
//        .local(path: "../UI/DesignSystem"),
//
//        .local(path: "../UI/Router"),
//
//        .local(path: "../SDEntity"),
//
//        .local(path: "../Features/Onboarding"),
//
//        .local(path: "../Features/Home"),
//
//        .local(path: "../Features/SymptomLog"),
//
//        .local(path: "../Features/SymptomAdd"),
//
//        .local(path: "../Features/FactorAdd"),
//
//        .local(path: "../Features/Settings/Settings"),
//
//    ],
//
//    targets: [
//
//        .target(
//
//            name: "Hearym",
//
//            destinations: .iOS,
//
//            product: .app,
//
//            bundleId: "com.lightwisdom.diseasenote",
//
//            deploymentTargets: DeploymentTargets.iOS("17.0"),
//
//            infoPlist: .extendingDefault(
//
//                with: [
//
//                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
//
//                    "UIDeviceFamily": [1],
//
//                    "NSAppTransportSecurity": [
//
//                        "NSExceptionDomains": [
//
//                            "52.79.76.159": [
//
//                                "NSExceptionAllowsInsecureHTTPLoads": true,
//
//                                "NSIncludesSubdomains": true
//
//                            ]
//
//                        ]
//
//                    ],
//
//                    "ITSAppUsesNonExemptEncryption": false,
//
//                ]
//
//            ),
//
//            sources: ["Hearym/Sources/**"],
//
//            resources: ["Hearym/Resources/**"],
//
//            entitlements: "Hearym/Hearym.entitlements",
//
//            dependencies: [
//
//                .package(product: "ComposableArchitecture"),
//
//                .package(product: "Extensions"),
//
//                .package(product: "ViewModel"),
//
//                .package(product: "BrickLayout"),
//
//                .package(product: "LocalStorage"),
//
//                .package(product: "Onboarding"),
//
//                .package(product: "DesignSystem"),
//
//                .package(product: "Home"),
//
//                .package(product: "SDEntity"),
//
//                .package(product: "Router"),
//
//                .package(product: "SymptomLog"),
//
//                .package(product: "SymptomAdd"),
//
//                .package(product: "FactorAdd"),
//
//                .package(product: "Settings"),
//
//            ],
//
//            settings: Settings.settings(base: [
//
//                "TARGETED_DEVICE_FAMILY": "1",
//
//                "SUPPORTS_MACCATALYST": "NO",
