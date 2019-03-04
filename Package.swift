// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "SFML",
    dependencies: [
        .package(url: "https://github.com/Zollerboy1/CSFML.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SFML", dependencies: [])
    ]
)
