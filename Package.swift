// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ScClient",
    products: [
        .library(
            name: "ScClient",
            targets: ["ScClient"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "Starscream"),
        .package(path: "HandyJSON")
        ],
    targets: [
        .target(
            name: "ScClient",
            dependencies: [
                "Starscream",
                "HandyJSON"
                ]),
        .target(
            name: "Main",
            dependencies: [
                "ScClient",
                ])
        ]
)
