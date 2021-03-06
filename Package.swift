// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ALMA",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7)
    ],
    products: [
        .library(
            name: "ALMA",
            targets: ["ALMA"]
        )
    ],
    dependencies: [
        .package(name: "AppLogger", url: "https://github.com/backslash-f/applogger", from: "1.0.0"),
        .package(name: "CGKStateMachine", url: "https://github.com/backslash-f/cgkstatemachine", from: "0.1.0"),
        .package(name: "CSKScene", url: "https://github.com/backslash-f/cskscene", from: "0.0.1"),
        .package(name: "Device", url: "https://github.com/backslash-f/device", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ALMA",
            dependencies: [
                "AppLogger",
                "CGKStateMachine",
                "CSKScene",
                "Device"
            ]
        ),
        .testTarget(
            name: "ALMATests",
            dependencies: ["ALMA"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
