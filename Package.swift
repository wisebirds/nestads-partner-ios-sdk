// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "NestAdsPartnerSDK",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "NestAdsPartnerSDK",
      targets: ["NestAdsPartnerSDKWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/wisebirds/nestads-ios-sdk", from: "2.15.0"),
    .package(url: "https://github.com/covigroup/COVI-iOS-SDK.git", from: "1.2.1"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", from: "4.8.0")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerSDK",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk/releases/download/1.1.0/NestAdsPartnerSDK.xcframework.zip",
      checksum: "a36a7b42fba2f960ff51b5572d6d85ac7b23a59f55eb0e58a65738112dbd3929"
    ),
    .target(
      name: "NestAdsPartnerSDKWrapper",
      dependencies: [
        "NestAdsPartnerSDK",
        .product(name: "NestAdsSDK", package: "nestads-ios-sdk"),
        .product(name: "COVI-iOS-SDK", package: "COVI-iOS-SDK"),
        .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
