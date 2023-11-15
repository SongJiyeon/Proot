// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Proot",
    platforms: [
      .iOS(.v15),
      .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "ProotApp",
            targets: ["Proot"]
        ),
    ],
    dependencies: [
      .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "1.4.0"),
    ],
    targets: [
        .target(name: "Proot"),
        .testTarget(
            name: "ProotTests",
            dependencies: ["Proot"]),
    ]
)
