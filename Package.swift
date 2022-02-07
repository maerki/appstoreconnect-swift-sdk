// swift-tools-version:5.5
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
        .package(url: "https://github.com/vapor/jwt-kit.git", from: "4.0.0")

        ],
    targets: [
        // dev .target(name: "DangerDependencies", dependencies: [
        // dev     .product(name: "Danger", package: "danger-swift"),
        // dev     .product(name: "WeTransferPRLinter", package: "WeTransferPRLinter")
        // dev ], path: "Submodules/WeTransfer-iOS-CI/DangerFakeSources", sources: ["DangerFakeSource.swift"]),
        // dev .testTarget(name: "AppStoreConnect-Swift-SDK-Tests", dependencies: ["AppStoreConnect-Swift-SDK"], path: "Tests", exclude: ["LinuxMain.swift"]),
        .target(name: "AppStoreConnectSDK", dependencies: ["JWTKit"], path: "Sources")
    ]
)
