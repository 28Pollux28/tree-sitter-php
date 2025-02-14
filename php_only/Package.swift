// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterPhpOnly",
    products: [
        .library(name: "TreeSitterPhpOnly", targets: ["TreeSitterPhpOnly"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterPhpOnly",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterPhpOnlyTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterPhpOnly",
            ],
            path: "bindings/swift/TreeSitterPhpOnlyTests"
        )
    ],
    cLanguageStandard: .c11
)
