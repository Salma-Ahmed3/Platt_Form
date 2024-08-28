
class AppSetting {
  static const String serviceURL =
      'mueen-apitest.azurewebsites.net'; // Mueen
   // 'https://mueen-apitest.azurewebsites.net/'; // Mueen test
  // 'https://mueenapitest.excp.sa/'; // Mueen
  // 'https://b2c.mueen.com.sa/api/'; // Mueen Live test apple pay
  // 'https://b2c.mueen.com.sa:8006/'; // Mueen Live
  // 'https://mueentest.excp.sa:8006/'; // Mueen Test
  static const String serviceURLUmbraco =
      'https://b2c.mueen.com.sa:8021/'; // Mueen umbraco

  static const bool isTestMode = true;
  static const bool showRequestInspector = true;
  static const int pageSize = 30;
  static const String privacyPolicy = "";

/*static const String oneSignalKey =
      "b1ace200-2e03-4f2e-ac42-3cffb28a3227"; // tadbeer App Id
  static const String googleMapKeyAndroid =
      "AIzaSyDwzLOTDs0NGJt1b_SH03WoDVq6hh2QA_w"; // tadbeer ANDROID KEY
  static const String googleMapKeyIOS =
      "AIzaSyDwzLOTDs0NGJt1b_SH03WoDVq6hh2QA_w"; // tadbeer IOS KEY*/
}

bool isNormalLogin = false;

String globalLang = ''; 
int numOfUnReadedNotification = 0;
const String updateTokenVersion = '2.0.0';
bool isArabic = true;
String? firebaseDeviceId;
// CountryModel? countryDataForUser;
bool isOutSA = false;
bool openContactUs = false;
late Map<String, String>? globalTranslationAR;
late Map<String, String>? globalTranslationEN;

bool isUserOpenNotification = false;
// OpenNotificationModel openNotificationModel = OpenNotificationModel();

class NotificationEntityTypes {
  static const String aboutToArrive = "AboutToArrive";
  static const String visitationStatusChange = "VisitationStatusChange";
  static const String evaluationVisit = "Evaluation";
}