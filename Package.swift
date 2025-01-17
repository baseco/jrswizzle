// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JRSwizzle",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "JRSwizzle",
            targets: ["JRSwizzle"]
        )
    ],
    targets: [
        .target(
            name: "JRSwizzle",
            path: "Source",
            publicHeadersPath: "include",
            cSettings: [
		.headerSearchPath("include/JRSwizzle"),
                .unsafeFlags(["-fno-objc-arc"])
            ]
        )
    ]
)
