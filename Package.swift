// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SquirrelCache",
    products: [
        .library(
            name: "SquirrelCache",
            targets: ["SquirrelCache"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onmyway133/SwiftHash.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "SquirrelCache",
            dependencies: ["SwiftHash"]),
        .testTarget(
            name: "MacTests",
            dependencies: ["SquirrelCache"]),
    ]
)
