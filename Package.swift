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
    .package(url: "https://github.com/wisebirds/nestads-ios-sdk", from: "2.12.0"),
    .package(url: "https://github.com/covigroup/COVI-iOS-SDK.git", from: "1.2.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerSDK",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk/releases/download/1.0.0/NestAdsPartnerSDK.xcframework.zip",
      checksum: "886d83525e766ee30088a6703ddba9d9cd1a55b0ac7c5ea15d0e2caf4b895419"
    ),
    .target(
      name: "NestAdsPartnerSDKWrapper",
      dependencies: [
        "NestAdsPartnerSDK",
        .product(name: "NestAdsSDK", package: "nestads-ios-sdk"),
        .product(name: "COVI-iOS-SDK", package: "COVI-iOS-SDK")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
