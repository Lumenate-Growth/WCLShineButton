// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WCLShineButton",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WCLShineButton",
            targets: ["WCLShineButton"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WCLShineButton",
            dependencies: [],
            exclude: ["Bundle+Module.swift"], // exclude as this is auto-generated in SPM
            resources: [
                .copy("Images")
            ],
            swiftSettings: [
                .define("SPM")
            ]
        ),
        .testTarget(
            name: "WCLShineButtonTests",
            dependencies: ["WCLShineButton"]
        ),
    ]
)
