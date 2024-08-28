import 'dart:io';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:nowproject/services/firbase_handling.dart';

AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
  afDevKey: 'rxex7QczmXkS8dAbb6atbi',
  appId: '6477344302',
  showDebug: true,
  timeToWaitForATTUserAuthorization: 50,
  disableAdvertisingIdentifier: false,
  disableCollectASA: false,
);
AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);

class AppsFlyerData {
  appsFlyerInit() async {
    appsflyerSdk.initSdk(
        registerConversionDataCallback: true,
        registerOnAppOpenAttributionCallback: true,
        registerOnDeepLinkingCallback: true);

    appsflyerSdk.onInstallConversionData((res) {
      print("onInstallConversionData res: " + res.toString());
    });

    appsflyerSdk.onAppOpenAttribution((res) {
      print("onAppOpenAttribution res: " + res.toString());
    });
  }

  Future<bool?> appFlyerLogEvent(String eventName, Map eventValues) async {
    var typeWithEventName =
        Platform.isIOS ? "mueenIOS_$eventName" : "mueen_$eventName";

    FireBaseHandling.logScreenView(screenName: typeWithEventName);

    return appsflyerSdk.logEvent(typeWithEventName, eventValues);
  }
}

class EventNames {
  static const login = 'login';
  static const registration = 'register';
  static const createContract = 'create Contract';
  static const purchase_open = 'Purchase_open';
  static const purchase_success = 'Purchase_success';
  static const purchase_failure = 'Purchase_failure';
}
