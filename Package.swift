// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "Stem",
    platforms: [
        .macOS(.v14)
    ],
    dependencies: [
        .package(url: "https://github.com/modelcontextprotocol/swift-sdk.git", from: "0.11.0")
    ],
    targets: [
        .executableTarget(
            name: "Stem",
            dependencies: [
                .product(name: "MCP", package: "swift-sdk")
            ],
            path: "Sources/Stem",
            exclude: ["Stem.entitlements"]
        )
    ]
)
