// swift-tools-version:5.3

import Foundation
import PackageDescription


let package = Package(
    name: "ScadeExtensions",
    
    platforms: [
        .macOS(.v10_14), .iOS(.v12)        
    ],
    
    products: [
        .library(
            name: "ScadeExtensions",                        
            targets: ["ScadeExtensions", "ScadeCore", "ScadeGraphics", "ScadeUI"]),
    ],
    
    dependencies: [
      .package(name: "Android", url: "https://github.com/scade-platform/swift-android.git", .branch("android/24")),
    ],
    
    targets: [
        .binaryTarget(name: "ScadeKit",
                      url: "https://github.com/scade-platform/ScadeKit/releases/download/2.4.0/ScadeKit.xcframework.zip",
                      checksum: "4bef943aa45155d3d25cad539710dec0c489d3ede287f8acdc5d5b4bc0f2d783"),

        .target(
            name: "ScadeExtensions",
            dependencies: [
                "ScadeKit"
            ],
            path: "Sources/Extensions"
        ),
        
        .target(
            name: "ScadeCore",
            dependencies: [
                "ScadeKit"
            ],
            path: "Sources/Core"
        ),
         
        .target(
            name: "ScadeGraphics",
            dependencies: [
                "ScadeKit"
            ],
            path: "Sources/Graphics"
        ),

        .target(
            name: "ScadeUI",
            dependencies: [
              .product(name: "AndroidApp", package: "Android", condition: .when(platforms: [.android])),
              .product(name: "AndroidView", package: "Android", condition: .when(platforms: [.android])),
              "ScadeKit"
            ],
            path: "Sources/UI"
        )
    ]
)
