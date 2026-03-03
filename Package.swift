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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.1.4/Win2GainMyGP.xcframework.zip",
            checksum: "6c5ecaa8ba9a1b661566bda45fb2b6d5bd2fba74f3e0037b7168408b4c3efe43"
        )
    ]
)
