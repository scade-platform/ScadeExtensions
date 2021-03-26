// swift-tools-version:5.3

import Foundation
import PackageDescription

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let swiftSettings: [SwiftSetting] = [
    .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
    .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android]))
]


let linkerSettings: [LinkerSetting] = [
    .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS]))
]


let package = Package(
    name: "ScadeFoundation",
    
    platforms: [
        .macOS(.v10_14), .iOS(.v12)        
    ],
    
    products: [
        .library(
            name: "ScadeFoundation",
            type: .dynamic,            
            targets: ["ScadeFoundation"]),
    ],
    
    dependencies: [ ],
    
    targets: [
        .target(
            name: "ScadeFoundation",
            dependencies: [],
            path: "Sources/Foundation",
            swiftSettings: swiftSettings,
            linkerSettings: linkerSettings
        ),
        
        .target(
            name: "ScadeCore",
            dependencies: [],
            path: "Sources/Core",
            swiftSettings: swiftSettings,
            linkerSettings: linkerSettings
        ),
         
        .target(
            name: "ScadeGraphics",
            dependencies: [],
            path: "Sources/Graphics",
            swiftSettings: swiftSettings,
            linkerSettings: linkerSettings
        ),

        .target(
            name: "ScadeUI",
            dependencies: [],
            path: "Sources/UI",
            swiftSettings: swiftSettings,
            linkerSettings: linkerSettings
        ),
                
        .testTarget(
            name: "ScadeFoundationTests",
            dependencies: ["ScadeFoundation"]),
    ]
)
