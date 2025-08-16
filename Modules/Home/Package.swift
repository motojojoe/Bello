// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "Home",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Home", targets: ["Home"])
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.9.1")
    ],
    targets: [
        .target(name: "Home", dependencies: ["Swinject"]),
        .testTarget(name: "HomeTests", dependencies: ["Home"])
    ]
)
