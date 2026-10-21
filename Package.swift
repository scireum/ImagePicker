// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "ImagePicker",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "ImagePicker", targets: ["ImagePicker"])
    ],
    targets: [
        .target(
            name: "ImagePicker",
            // the repository root, as the images live next to the sources rather than inside them
            path: ".",
            exclude: [
                "Demo",
                "ImagePicker.xcodeproj",
                "Resources",
                "SupportFiles",
                "CHANGELOG.md",
                "CONTRIBUTING.md",
                "ImagePicker.podspec",
                "LICENSE.md",
                "README.md"
            ],
            sources: ["Source"],
            resources: [.process("Images")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
