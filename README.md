# FluctSDK手動インストール手順

1. https://github.com/voyagegroup/FluctSDK-iOS/releases から最新版の`Source code`をダウンロードする
1. ダウンロードしたzipにある`FluctSDK.embeddedframework/FluctSDK.xcframework`をXcodeにドラッグアンドドロップし、`Build Phase`の`Link Binary With Libraries`に追加する
1. ダウンロードしたzipにある`FluctSDK.embeddedframework/Resources/FluctSDKResources.bundle`をXcodeにドラッグアンドドロップし、`Build Phase`の`Copy Bundle Resources`に追加する
1. ダウンロードしたzipにある`FluctSDK-MediationAdapter`をXcodeにドラッグアンドドロップして追加する
1. 以下をframeworkをプロジェクトに追加する
    - AdSupport
    - CoreTelephony
    - MediaPlayer
    - CoreMedia
    - SystemConfiguration
    - StoreKit
    - Social
    - AVFoundation
    - WebKit
    - AppTrackingTransparency
1. メディエーションで利用するアドネットワークSDKをインストールする
    - [UnityAds](https://docs.unity.com/ads/InstallingTheiOSSDK.html)
    - [Tapjoy](https://dev.tapjoy.com/jp/ios-sdk/Manual-Integration)
    - [AppLovin](https://dash.applovin.com/documentation/mediation/manual-integration-ios)
    - [AdColony](https://github.com/AdColony/AdColony-iOS-SDK/wiki/Project-Setup#option-2-non-cocoapods)
    - [Pangle](https://www.pangleglobal.com/jp/integration/integrate-pangle-sdk-for-ios)
    - [Maio](https://github.com/imobile-maio/maio-iOS-SDK#manual-download)
    - [Nend](https://github.com/fan-ADN/nendSDK-iOS/wiki/SDK%E3%82%92%E6%89%8B%E5%8B%95%E3%81%A7%E8%BF%BD%E5%8A%A0%E3%81%99%E3%82%8B)
    - [Five](https://adsnetwork-docs.linebiz.com/fivesdk-ios/quick-start/install-fivesdk.html#%E6%89%8B%E5%8B%95%E3%81%A6%E3%82%99%E3%81%AE%E5%B0%8E%E5%85%A5)
1. 動画リワード広告の表示確認をする
