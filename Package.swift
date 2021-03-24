// swift-tools-version:5.3

import Foundation
import PackageDescription

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
    name: "ScadeFoundation",
    
    platforms: [
        .macOS(.v10_14), .iOS(.v12)        
    ],
    
    products: [
        .library(
            name: "ScadeFoundation",
            targets: ["ScadeFoundation"]),
    ],
    
    dependencies: [ ],
    
    targets: [
        .target(
            name: "ScadeFoundation",
            dependencies: [],
            path: "Sources/Foundation",
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android]))]
        ),
        
        .target(
            name: "ScadeCore",
            dependencies: [],
            path: "Sources/Core",
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android]))]
        ),
         
        .target(
            name: "ScadeGraphics",
            dependencies: [],
            path: "Sources/Graphics",
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android]))]
        ),

        .target(
            name: "ScadeUI",
            dependencies: [],
            path: "Sources/UI",
            swiftSettings: [
                .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android]))]
        ),
                
        .testTarget(
            name: "ScadeFoundationTests",
            dependencies: ["ScadeFoundation"]),
    ]
)
