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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.2.0/Win2GainMyGP.xcframework.zip",
            checksum: "892e0edf992028a2839d510ca0ddf59e54d33aa383e9e39a170f9fa8c1d24c57"
        )
    ]
)
