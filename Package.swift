// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TomHaverford",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TomHaverford",
            targets: [ "TomHaverford" ])
    ],
    targets: [
        .target(name: "TomHaverford")
    ]
)
