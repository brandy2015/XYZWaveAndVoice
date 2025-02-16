 
// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "XYZWaveAndVoice",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "XYZWaveAndVoice",
            targets: ["XYZWaveAndVoice"]
        ),
    ],
    targets: [
        .target(
            name: "XYZWaveAndVoice",
            dependencies: [],
            path: "XYZWaveAndVoice/Sources",
            exclude: ["Tests"]
        )
         
    ]
)
