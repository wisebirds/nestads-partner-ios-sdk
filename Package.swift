// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "NestAdsPartnerSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "NestAdsPartnerSDK",
      targets: ["NestAdsPartnerSDKWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/covigroup/COVI-iOS-SDK.git", from: "1.2.1"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", from: "4.8.0"),
    .package(url: "https://github.com/adfit/adfit-spm.git", from: "3.21.24")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerSDK",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk/releases/download/1.2.0/NestAdsPartnerSDK.xcframework.zip",
      checksum: "fa8eb1e5fb7b82535363d2293ba4a1d5b035b042e7588a7c2e0d8a6cb5db4a88"
    ),
    .target(
      name: "NestAdsPartnerSDKWrapper",
      dependencies: [
        "NestAdsPartnerSDK",
        .product(name: "COVI-iOS-SDK", package: "COVI-iOS-SDK"),
        .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm"),
        .product(name: "AdFitSDK", package: "adfit-spm")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
