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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.1.7/Win2GainMyGP.xcframework.zip",
            checksum: "43562178fb89dd57353abbfe39121ad4fee95f63aa76977eb3de5f42c8c44a87"
        )
    ]
)
