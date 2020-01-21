// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JustViews",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "JustViews",
            targets: ["JustViews"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.2"),
        .package(url: "https://github.com/vapor/template-kit", from: "1.4.0")
    
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "JustViews", dependencies: []),
        .testTarget(
            name: "JustViewsTests",
            dependencies: ["JustViews", "TemplateKit"]),
    ]
)
