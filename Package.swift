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
      .library(name: "App", targets: ["App"]),
      .library(name: "Home", targets: ["Home"]),
    ],
    dependencies: [
      .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "1.4.0"),
    ],
    targets: [
      .target(
        name: "App",
        dependencies: [
          .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
          .target(name: "Home"),
        ],
        path: "Sources/App"
      ),
      .target(
        name: "Home",
        dependencies: [
          .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        ],
        path: "Sources/Home"
      ),
    ]
)
