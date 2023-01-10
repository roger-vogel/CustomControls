// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomControls",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library( name: "CustomControls",targets: ["CustomControls"]),],
  
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/roger-vogel/ColorManager.git", from: "1.0.0"),.package(url: "https://github.com/roger-vogel/Extensions.git", from: "1.0.0"),],

    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CustomControls",
            dependencies: [.product(name: "ColorManager", package: "ColorManager"),.product(name: "Extensions", package: "Extensions")]),
        .testTarget(
            name: "CustomControlsTests",
            dependencies: ["CustomControls"]),
    ]
)
