// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Yoga",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "yoga", targets: ["yoga"]),
        .library(name: "YogaKit", targets: ["YogaKit"]),
        .library(name: "YogaSwift", targets: ["YogaSwift"])
    ],
    targets: [
        .target(name: "yoga", path: "yoga", sources: ["./"], publicHeadersPath: "include", cSettings: [.headerSearchPath("./")]),
        .target(name: "YogaKit", dependencies: ["yoga"], path: "YogaKit/Sources"),
        .target(name: "YogaSwift", dependencies: ["YogaKit"], path: "YogaSwift/Sources")
    ],
    swiftLanguageVersions: [.v5],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
