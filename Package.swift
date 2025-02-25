// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swift-html",
    platforms: [
		.macOS(.v10_15),
		.iOS(.v13),
		.tvOS(.v13),
		.watchOS(.v6),
		.macCatalyst(.v13),
        .visionOS(.v1)
	],
    products: [
        .library(name: "SwiftSgml", targets: ["SwiftSgml"]),
        .library(name: "SwiftHtml", targets: ["SwiftHtml"]),
        .library(name: "SwiftSvg", targets: ["SwiftSvg"]),
        .library(name: "SwiftSitemap", targets: ["SwiftSitemap"]),
        .library(name: "SwiftRss", targets: ["SwiftRss"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SwiftSgml", dependencies: []),
        .target(name: "SwiftHtml", dependencies: [
            .target(name: "SwiftSgml")
        ]),
        .target(name: "SwiftSvg", dependencies: [
            .target(name: "SwiftSgml")
        ]),
        .target(name: "SwiftSitemap", dependencies: [
            .target(name: "SwiftSgml")
        ]),
        .target(name: "SwiftRss", dependencies: [
            .target(name: "SwiftSgml")
        ]),
        .testTarget(name: "SwiftSgmlTests", dependencies: [
            .target(name: "SwiftSgml"),
        ]),
        .testTarget(name: "SwiftHtmlTests", dependencies: [
            .target(name: "SwiftHtml"),
        ]),
        .testTarget(name: "SwiftSvgTests", dependencies: [
            .target(name: "SwiftSvg"),
        ]),
        .testTarget(name: "SwiftSitemapTests", dependencies: [
            .target(name: "SwiftSitemap"),
        ]),
        .testTarget(name: "SwiftRssTests", dependencies: [
            .target(name: "SwiftRss"),
        ]),
    ]
)


