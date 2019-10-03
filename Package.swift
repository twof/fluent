// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "fluent",
    products: [
        .library(name: "Fluent", targets: ["Fluent"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent-kit.git", from: "1.0.0-alpha.2"),
        .package(url: "https://github.com/twof/vapor.git", .branch("platforms")),
    ],
    targets: [
        .target(name: "Fluent", dependencies: ["FluentKit", "Vapor"]),
        .testTarget(name: "FluentTests", dependencies: ["Fluent"]),
    ]
)
