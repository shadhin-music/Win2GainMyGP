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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.1.5/Win2GainMyGP.xcframework.zip",
            checksum: "64ea4d968e515fe300ec7bfd9128b68d0f39728cd3f9e20e793677d3e718e4d8"
        )
    ]
)
