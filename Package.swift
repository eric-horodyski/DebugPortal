// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DebugPortal",
		platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DebugPortal",
            targets: ["DebugPortal"]),
    ],
		dependencies: [
			.package(url: "https://github.com/ionic-team/ionic-portals-ios", .upToNextMinor(from: "0.10.0")),
		],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DebugPortal",
						dependencies: [.product(name: "IonicPortals", package: "ionic-portals-ios")],
						resources: [.copy("webapp")]
				)
    ]
)
