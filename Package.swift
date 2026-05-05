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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.1.9/Win2GainMyGP.xcframework.zip",
            checksum: "7c565531d1e9abf0b6620a4ecc090971cf6433f296e0c81135b4cec75b68d8fc"
        )
    ]
)
