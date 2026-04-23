# NestAdsPartnerSDK

파트너사가 Wisebirds NestAds 및 제휴 광고 네트워크의 인벤토리를 iOS 앱에 통합할 수 있도록 지원하는 **파트너 통합 iOS SDK** 입니다.

## 현재 릴리스

| 구성요소 | 버전 |
|---|---|
| NestAdsPartnerSDK | `1.0.0` |
| NestAdsSDK (번들) | `2.12.0` 이상 |
| COVI 환경 | host 앱 `NestAds.environment` 기준 (미설정 시 채널 기본값 `prod`) |

## 설치 (Swift Package Manager)

Xcode → `File` → `Add Package Dependencies…` 에서 아래 URL 입력:

```
https://github.com/wisebirds/nestads-partner-ios-sdk
```

또는 `Package.swift` 직접 명시:

```swift
dependencies: [
    .package(
        url: "https://github.com/wisebirds/nestads-partner-ios-sdk",
        from: "1.0.0"
    )
]
```

## 요구 사항

- iOS 13.0+
- Swift 5.9+
- Xcode 15.0+

## 번들 의존성

| Framework | Source |
|---|---|
| NestAdsSDK | GitHub `wisebirds/nestads-ios-sdk` |
| COVI-iOS-SDK | GitHub `covigroup/COVI-iOS-SDK` |

## 문의 및 지원

- 파트너 계약 및 기술 지원: Wisebirds NestAds 파트너십 팀
- Bug report: 내부 이슈 트래커

## 라이선스

Copyright © Wisebirds. All rights reserved.
