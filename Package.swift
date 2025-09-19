// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebUntisHTMLParser",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "WebUntisHTMLParser",
            targets: ["WebUntisHTMLParser"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.6.0")
    ],
    targets: [
        .target(
            name: "WebUntisHTMLParser",
            dependencies: ["SwiftSoup"]
        ),
        .testTarget(
            name: "WebUntisHTMLParserTests",
            dependencies: ["WebUntisHTMLParser"]
        ),
    ]
)
