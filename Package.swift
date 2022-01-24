// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Darwin

let package = Package(
    name: "BlueCatsSDK-Swift",
    platforms: [
            .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BlueCatsSDK-Swift",
            targets: ["BlueCatsSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "BlueCatsSDK-Swift",
//            dependencies: ["BlueCatsSDK"],
//            path: "Sources/bluecats-ios-sdk-swift",
//            linkerSettings: [
//                //Frameworks
//
//            ]
//        ),
        .binaryTarget(
            name: "BlueCatsSDK", //binary target name must be same as the module name
            path: "BlueCatsSDK.xcframework"
        )
//        .testTarget(
//            name: "bluecats-ios-sdk-swiftTests",
//            dependencies: ["bluecats-ios-sdk-swift"]),
    ]
)
