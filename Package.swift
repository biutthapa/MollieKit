// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MollieKit",
    products: [
        .library(
            name: "MollieKit",
            targets: ["MollieKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "MollieKit",
            dependencies: ["Vapor"]),
        .testTarget(
            name: "MollieKitTests",
            dependencies: ["MollieKit"]),
    ]
)
