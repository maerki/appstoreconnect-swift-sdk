// swift-tools-version:5.1
// We're hiding dev, test, and danger dependencies with // dev to make sure they're not fetched by users of this package.

import PackageDescription

let package = Package(
    name: "AppStoreConnectSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // dev .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"]),
        .library(name: "AppStoreConnectSDK", targets: ["AppStoreConnectSDK"])
    ],
    dependencies: [
        // dev .package(url: "https://github.com/danger/swift", from: "3.0.0"),
        .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0" ..< "3.0.0"),
        ],
    targets: [
        // dev .target(name: "DangerDependencies", dependencies: ["Danger", "WeTransferPRLinter"], path: "Submodules/WeTransfer-iOS-CI/Danger-Swift", sources: ["DangerFakeSource.swift"]),
        // dev .testTarget(name: "AppStoreConnect-Swift-SDK-Tests", dependencies: ["AppStoreConnect-Swift-SDK"], path: "Tests", exclude: ["LinuxMain.swift"]),
        .target(name: "AppStoreConnectSDK", dependencies: ["Crypto"], path: "Sources")
    ]
)
