// swift-tools-version:5.1

import PackageDescription // I’m told my package is indescribable, but lemme try.

let package = Package(
    name: "TomHaverford",
    platforms: [
        .iOS(.v13) // Despite Tommy’s most charming efforts Pawnee won’t get me that Mac Pro, so ya’ll will have to settle for iPhone and iPad only, alright?
    ],
    products: [
        .library(
            name: "TomHaverford",
            targets: [ "TomHaverford" ])
    ],
    targets: [
        .target(name: "TomHaverford") // Target? Not these threads.
    ]
)
