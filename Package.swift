// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Win2GainMyGP",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Win2GainMyGP",
            targets: ["Win2GainMyGP"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "Win2GainMyGP",
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.2.1/Win2GainMyGP.xcframework.zip",
            checksum: "f9c156898e0af47c5206dda3613fcf86a3ddedb186038597f21bd6a25b11e6ab"
        )
    ]
)
