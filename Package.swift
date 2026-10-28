// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TappxAppLovinAdapter",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TappxAppLovinAdapter",
            targets: ["TappxAppLovinAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/tappx-com/TappxSDK-swift-package-manager.git", from: "4.2.16"),
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TappxAppLovinAdapter",
            dependencies: [
                .product(name: "TappxSDK", package: "TappxSDK-swift-package-manager"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package")
            ],
            path: "TappxAppLovinAdapter"
        ),

    ],
    swiftLanguageModes: [.v6]
)
