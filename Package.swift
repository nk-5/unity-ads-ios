// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnityAds",
    products: [
        .library(
            name: "unity-ads-ios",
            targets: ["unity-ads-ios"]),
    ],
    targets: [
        // .target(
        //     name: "unity-ads-ios",
        //     path: "SourceCode"
        // ),
        .binaryTarget(
            name: "unity-ads-ios",
            url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.8.0/UnityAds.zip", 
            checksum: "8fd3a218ca955868f26abeb9da889dbc6c1ff90ffae076bdccb715f2a1fd6448"
        ),
    ]
)
