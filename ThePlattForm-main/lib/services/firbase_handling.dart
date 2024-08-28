import 'package:firebase_analytics/firebase_analytics.dart';

class FireBaseHandling {
  static logScreenView({required String screenName}) async {
    await FirebaseAnalytics.instance.logEvent(name: 'screen_view', parameters: {
      'firebase_screen': screenName,
      'firebase_screen_class': screenName,
    });
    await FirebaseAnalytics.instance.setCurrentScreen(screenName: screenName);
  }

}
