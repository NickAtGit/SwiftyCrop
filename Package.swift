// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyCrop",
    defaultLocalization: "en",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "SwiftyCrop",
            targets: ["SwiftyCrop"])
    ],
    dependencies: [
        .package(url: "https://github.com/NickAtGit/Foundation.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "SwiftyCrop",
            dependencies: [
                .product(name: "AppFoundation", package: "Foundation"),
            ], 
            path: "Sources",
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
                .process("SwiftyCrop/Resources/Localizable.xcstrings"),
            ]
        ),
        .testTarget(
            name: "SwiftyCropTests",
            dependencies: ["SwiftyCrop"])
    ]
)
