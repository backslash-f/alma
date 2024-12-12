// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "ALMA",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11)
    ],
    products: [
        .library(
            name: "ALMA",
            targets: ["ALMA"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/backslash-f/applogger", from: "2.0.0"),
        .package(url: "https://github.com/backslash-f/gcoverseer", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "ALMA",
            dependencies: [
                .product(name: "AppLogger", package: "applogger"),
                .product(name: "GCOverseer", package: "gcoverseer")
            ]
        ),
        .testTarget(
            name: "ALMATests",
            dependencies: ["ALMA"]
        )
    ],
    swiftLanguageModes: [.v6]
)
