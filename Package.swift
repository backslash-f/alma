// swift-tools-version:5.4

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
        .package(name: "CSKScene", url: "https://github.com/backslash-f/cskscene", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "ALMA",
            dependencies: [
                "AppLogger",
                "CSKScene"
            ],
            exclude:["Resources"]
        ),
        .testTarget(
            name: "ALMATests",
            dependencies: ["ALMA"],
            exclude:["Resources"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
