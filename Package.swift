// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WalletKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WalletKit",
            targets: ["WalletKitFramework"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/web3swift-team/web3swift.git", .upToNextMajor(from: "3.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .binaryTarget(
//            name: "WalletKitFramework",
//            path: "./Sources/WalletKitFramework.xcframework"),
//        .target(
//            name: "Dependencies-Wrapper",
//            dependencies: [
//                .target(name: "WalletKitFramework"),
//                "web3swift"
//            ]
//        )
        .target(
            name: "WalletKitFramework",
            dependencies: [
                "web3swift"
            ],
            path: "./Sources/Dependencies-Wrapper"
        )
    ]
)
