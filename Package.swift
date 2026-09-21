// swift-tools-version:5.9
import PackageDescription

let navigineLinkerSettings: [LinkerSetting] = [
    .linkedFramework("CoreFoundation"),
    .linkedFramework("CoreGraphics"),
    .linkedFramework("CoreLocation"),
    .linkedFramework("CoreText"),
    .linkedFramework("CoreBluetooth"),
    .linkedFramework("GLKit"),
    .linkedFramework("SystemConfiguration"),
    .linkedFramework("OpenGLES"),
    .linkedFramework("QuartzCore"),
    .linkedFramework("UIKit"),
    .linkedFramework("Metal"),
    .linkedLibrary("c++"),
]

let package = Package(
    name: "NavigineFlutter",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "NavigineFlutter",
            targets: ["Navigine", "NavigineDependencies"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Navigine",
            url: "https://github.com/Navigine/Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter/releases/download/v.2.28.0/Navigine.xcframework.zip",
            checksum: "0b57ad75bf5dda3a1e6c4acfb6ca8dffcce205e7b56ed8ffebc81eb3f92d48a0"
        ),
        .target(
            name: "NavigineDependencies",
            path: "NavigineDependencies",
            linkerSettings: navigineLinkerSettings
        ),
    ]
)
