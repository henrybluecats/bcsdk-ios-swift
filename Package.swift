// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bluecats-ios-sdk-swift",
    platforms: [
            .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "bluecats-ios-sdk-swift",
            targets: ["bluecats-ios-sdk"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "bluecats-ios-sdk-swift",
//            dependencies: ["bluecats-ios-sdk"]
//            ),
//
        .binaryTarget(name: "bluecats-ios-sdk",
                      path: "BlueCatsSDK.xcframework"),
        
//        .testTarget(name: "bluecats-ios-sdk-swiftTests", dependencies: ["bluecats-ios-sdk-swift"])
        
    ]
)
