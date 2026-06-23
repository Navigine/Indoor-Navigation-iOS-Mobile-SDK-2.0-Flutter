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
            url: "https://github.com/Navigine/Indoor-Navigation-iOS-Mobile-SDK-2.0-Flutter/releases/download/v.2.26.0/Navigine.xcframework.zip",
            checksum: "5fafa6285dae267901805496cb4f3d20a5580331e997e92e242f10222108a24b"
        ),
        .target(
            name: "NavigineDependencies",
            path: "NavigineDependencies",
            linkerSettings: navigineLinkerSettings
        ),
    ]
)
