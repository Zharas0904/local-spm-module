// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalyticsKit",
    products: [
        .library(
            name: "AnalyticsKit",
            targets: ["AnalyticsKit"]),
    ],
    targets: [
        .target(
            name: "AnalyticsKit"),

    ]
)
