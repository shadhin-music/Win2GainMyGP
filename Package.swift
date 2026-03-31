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
            url: "https://github.com/shadhin-music/Win2GainMyGP/releases/download/1.1.8/Win2GainMyGP.xcframework.zip",
            checksum: "f3df1e92d0f8b8534319dd019887f825587481781b75206976562eea0b170a27"
        )
    ]
)
