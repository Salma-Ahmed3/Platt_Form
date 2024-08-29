
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nowproject/services/apps_flyer_data.dart';

goToScreen({required String screenNames, Object? arguments }) {

  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);

  Navigator.pushNamed(Get.context!, screenNames, arguments: arguments  );
}

goToScreenpopAndPushNamed({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);
  Navigator.popAndPushNamed(Get.context!, screenNames, arguments: arguments);
}

goToScreenPushNamedAndpop({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);

  Navigator.pushReplacementNamed(Get.context!, screenNames, arguments: arguments);
}

goBack({Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.pop(Get.context! , arguments );
}

goToWithRemoveRoute({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);

  Navigator.of(Get.context!).pushNamedAndRemoveUntil(
      screenNames, (Route<dynamic> route) => false);
  // Navigator.pushNamed(Get.context, screenNames);
}
popUntilScreen({required String screenNames}) {
  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);

  Navigator.of(Get.context!)
      .popUntil(ModalRoute.withName(screenNames));
}



goToIntro({required String screenNames, Object? arguments}) {
  // FocusScope.of(Get.context).unfocus();
  // Navigator.of(Get.context).pushNamedAndRemoveUntil(screenNames, (Route<dynamic> route) => false);
  // Navigator.pushNamed(Get.context, screenNames);

  FocusScope.of(Get.context!).unfocus();
  logEventScreenView(screenNames);

  // Navigator.of(Get.context).pushNamedAndRemoveUntil(screenName, (Route<dynamic> route) => false);
  Get.offNamedUntil(screenNames, (route) => false);
}

goPopUntil({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.of(Get.context!).popUntil(ModalRoute.withName(screenNames));
}

logEventScreenView(screenNames) async {
  var eventName =
  Platform.isIOS ? "mueenIOS_$screenNames" : "mueen_$screenNames";
  await FirebaseAnalytics.instance.logEvent(name: 'screen_view', parameters: {
    'firebase_screen': eventName,
    'firebase_screen_class': eventName,
  });
  logEventWithAppsFlyerScreenView(screenNames);
  await FirebaseAnalytics.instance.setCurrentScreen(screenName: eventName);
}

logEventWithAppsFlyerScreenView(screenNames) async {
  var eventName = "${screenNames.replaceAll("/", "")}";
  AppsFlyerData().appFlyerLogEvent(eventName, {});
}
