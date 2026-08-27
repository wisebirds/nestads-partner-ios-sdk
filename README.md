# NestAdsPartnerSDK

파트너사가 Wisebirds NestAds 및 제휴 광고 네트워크의 인벤토리를 iOS 앱에 통합할 수 있도록 지원하는 **파트너 통합 iOS SDK** 입니다.

## 현재 릴리스

| 구성요소 | 버전 |
|---|---|
| NestAdsPartnerSDK | `1.2.0` |
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
        from: "1.2.0"
    )
]
```

### 메인 NestAdsSDK 추가 (필수)

파트너 SDK 1.2.0 부터 메인 NestAdsSDK 와 **런타임 브리지 방식**으로 연동됩니다(컴파일 의존 없음).
파트너 SDK 를 추가해도 메인 SDK 가 전이 의존으로 따라오지 않으므로 **메인 NestAdsSDK(2.16.0 이상)를
직접 추가**해야 합니다. 메인 SDK 가 없거나 브리지 미지원 버전이면 파트너 광고는 조용히 비활성되며
콘솔에 경고가 출력됩니다.

## 요구 사항

- iOS 15.0+ (AdFit SDK 요구)
- Swift 5.9+
- Xcode 15.0+

## 번들 의존성

| Framework | Source |
|---|---|
| COVI-iOS-SDK | GitHub `covigroup/COVI-iOS-SDK` |
| MolocoSDK | GitHub `moloco/moloco-sdk-ios-spm` |
| AdFitSDK | GitHub `adfit/adfit-spm` |

> **개인정보 라벨 안내**: AdFit SDK 는 IDFA 를 자체 수집합니다. 파트너 광고(AdFit)를 사용하는
> 앱은 App Store 개인정보 처리방침 라벨(App Privacy)에 광고 식별자 수집을 반영해야 합니다.

## 문의 및 지원

- 파트너 계약 및 기술 지원: Wisebirds NestAds 파트너십 팀
- Bug report: 내부 이슈 트래커

## 라이선스

Copyright © Wisebirds. All rights reserved.
