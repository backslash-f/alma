// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "ALMA",
    products: [
        .library(
            name: "ALMA",
            targets: ["ALMA"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ALMA",
            dependencies: []
        ),
        .testTarget(
            name: "ALMATests",
            dependencies: ["ALMA"]
        )
    ]
)
