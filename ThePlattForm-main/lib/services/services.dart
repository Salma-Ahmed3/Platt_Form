import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io' show InternetAddress, Platform, SocketException, exit;
import 'dart:math';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:http/http.dart' as http;
import 'package:nowproject/utility/app_setting.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class AppService {
  static String apikey =
      "UGFzc05BU0FQSUBOYXNBUElVc2VyMTIzQFBhc3M6TmFzQVBJVXNlcjEyM0B1c2Vy#";
  static String apiRequestHTML = "RequestTemplate,";
  static String platform = getPlatformName();

  ///[actionType] The type of the action get or post
  ///[apiName] The api url name api/controller/method
  ///[body] The data send with post request

  static Future callService(
      {required ActionType actionType,
      required String apiName,
      Map<String, dynamic>? query,
      required body}) async {
    Random random = Random();
    String lang = 'ar';
    int timeX = (1000 + random.nextInt(1000));
    var apiUrl = Uri.https(
     AppSetting.serviceURL,
      "$lang/api/$apiName",
      query,
    );
    // await registerDeviceOneSignal();

    var header = {
      "content-type": 'application/json',
      "TimeX": timeX.toString(),
      "cache-control": "no-cache",
      "SignAuth": "$apikey${getSignature(apiUrl, timeX)}",
      "platform": 'android',
      "version": '7.0.0',
      "source": "3",
      "Accept": 'application/json, text/plain, /',
    };

// if (!checkIfNotLogin(apiUrl.toString())) {
//   String? token = await getStoredToken(); 

//   if (token != null) {
//     header.update(
//       'Authorization',
//       (value) => "bearer $token",
//       ifAbsent: () => "bearer $token",
//     );
//   }
// }

    // if (!checkIfNotLogin(apiUrl.toString())) {
    //   // String? token = await getStoredToken();

    //   // if (token != null)
      
    //    {
    //     header.update('Authorization', (value) => "bearer $token",
    //         ifAbsent: () => "bearer $token");
    //   }
    // }
    // var logger = Logger(
    //   printer: PrettyPrinter(
    //     methodCount: 2, // Number of method calls to be displayed
    //     errorMethodCount: 8, // Number of method calls if stacktrace is provided
    //     lineLength: 120, // Width of the output
    //     colors: true, // Colorful log messages
    //     printEmojis: true, // Print an emoji for each log message
    //     // Should each log print contain a timestamp
    //     dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    //   ),
    // );
    //
    // logger.t(
    //   apiUrl.toString(),
    // );
    // logger.t(
    //   json.encode(header).toString(),
    // );
    // logger.t(
    //   json.encode(query).toString(),
    // );
    // logger.t(
    //   json.encode(body).toString(),
    // );

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        HttpWithMiddleware http = HttpWithMiddleware.build(
          middlewares: [
            HttpLogger(
              logLevel: LogLevel.BODY,
            ),
          ],
        );
        final response = actionType == ActionType.get
            ? await http.get(
                apiUrl,
                headers: header,
              )
            : await http.post(apiUrl, headers: header, body: json.encode(body));

        /// Record Firebase Crashlytics
        // logger.t(
        //   response.statusCode.toString(),
        // );
        // logger.t(
        //   response.body.toString(),
        // );
        // if (response.statusCode == 401) {
        //   await response401();
        // } else {
        //   // var result = await responseValue(response.body,
        //   //     navigatorKey.currentContext!, checkIfREQUESTHTML(apiUrl));

        //   // return result;
        // }
      } else {
        return null;
      }
    } catch (e) {}
  }

  // static getStoredToken() async {
  //   // String? storedToken = CacheHelper.getUserToken();
  //   if (storedToken != "") {
  //     return storedToken;
  //   } else {
  //     return null;
  //   }
  // }

  static checkIfNotLogin(String apiUrl) {
    if (apiUrl.contains('login') ||
        apiUrl.contains('ResetPassword') ||
        apiUrl.contains('ReGenrateCode') ||
        apiUrl.contains('Register') ||
        apiUrl.contains('VerifyCode') ||
        apiUrl.contains('ForgotPassword')) {
      return true;
    } else {
      return false;
    }
  }

  Future getRequestExternalUrl(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } on SocketException catch (_) {
      return null;
    }
  }

  static String getSignature(url, int key) {
    int x = url.toString().split('/').length;
    int y = url.toString().split('?').length;
    int portion1 = 2 * key;

    portion1 = portion1 + x;
    portion1 = portion1 + y;
    portion1 = portion1 + 8;

    int portion2 = key + x;
    portion2 = portion2 - y;
    portion2 = portion2 - 2;
    int portion3 = portion1 + portion2;
    portion3 = portion3 + 5;
    var portion4 = x + y;
    int sign = portion3 + portion4;
    return sign.toString();
  }

  static responseValue(String response, context,
      [bool requestHtml = false]) async {
    if (!requestHtml) {
      // ignore: unnecessary_string_escapes
      response = response.replaceAll('/\ ', '"\\\\');
    }

    var getResponse = jsonDecode(response);
    // dev.log(getResponse.status.runtimeType.toString(), name: "RESPONSE1111s");
    if (getResponse['status'] == 200) {
      var responseResult = jsonDecode(response);
      return responseResult["data"];

      /// 306 Code Update version
    } else if (getResponse['status'] == 306) {
      /* String message= getResponse.message.toString().replaceAll('"', '');
      String msg = message.isNotEmpty && message!='null' ? message: AppWords.update_new_version_message.tr;
      String urlLink = Platform.isIOS==true
          ? 'https://apps.apple.com/us/app/enaya/id1491310421'
          : 'https://play.google.com/store/apps/details?id=com.excprotection.EnayaMobile';
      await customAlertOptional(
        title: msg,
        alertType: AlertType.sorry.tr,
        textSecondButton: GlobalWords.close.tr ,
        willPopScope: false,
        onTap: (){
          LaunchUrl.openUrl(url: urlLink);
          // exit(0);
        } ,
        onCancel: (){exit(0);},
      );*/
      /// CODE 300 MEAN AMBIGUOUS RESULT
    } else if (getResponse['status'] == 300) {
      try {
        /// CODE 300.1 MEANS NOTIFY IS SOME THING DONE OR SEND LEAD WITH USER REQUIRE
        if (getResponse['code'].toString() == '300.1') {
          /* await customAlertOptional(
            title: getResponse.message,
            textButton: HourlyTR.create_new_order.tr,
            alertType: GlobalWords.sorry.tr,
            onTap: () {
              if (BlocProvider.of<DynamicStepCubit>(Get.context!, listen: false).serviceType ==
                  ServiceType.hourlyServiceType) {
                goToScreenpopAndPushNamed(screenNames: ScreenNames.createLeadHourly);
              }else{
                goToScreenpopAndPushNamed(screenNames: ScreenNames.createLeadIndiv);
              }
            }, onCancel: (){ goBack(); },
          );*/
        }
        // /// CODE 300.3 MEANS USER IS HAVE CONTRACT NOT PAID
        // else  if( getResponse.code.toString()=='300.3'){
        //   await customAlertMessage(alertType: GlobalWords.sorry.tr,
        //       txt: '${getResponse.message}',
        //       onClick: (){
        //         goToWithRemoveRoute(screenNames: ScreenNames.getContract, );
        //       }
        //   );
        // }
        else if (getResponse['code'].toString() == '300.4') {
          /*await customAlertContactUs(
            title: getResponse.message,
          );*/
        }

        /// CODE 300.2 MEANS USER IS HAVE CONTRACT NOT PAID - HOURLY CONTRACT
        else if (getResponse['code'].toString() == '300.3') {
          /* await customAlertOptional(
              alertType: GlobalWords.sorry.tr,
              title: getResponse.message.toString(),
              onTap: (){
                goToScreenpopAndPushNamed(screenNames: getResponse.location, arguments: getResponse.data );
              }, onCancel: (){
            goBack();
          }
          );*/
        } else {}
      } catch (_) {}
    } else {
      dev.log(getResponse['message'].toString(),
          name: "RESPONSE Failed", error: getResponse['message'].toString());
      // show scaffold massenge
      // ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: Text(message),
      //       duration: Duration(seconds: 3), // Duration the SnackBar will be visible
      //       action: SnackBarAction(
      //         label: 'UNDO',
      //         onPressed: () {
      //           // Code to execute when the action is pressed
      //         },
      //       ),
      //     ),
      // customAlertMessage(
      //     txt: getResponse['message'] ?? "",
      //     buildContext: context,
      //     alertType: 'عفواً',
      //     onClick: () {
      //       navigatorKey.currentContext!.pop();
      //     });

      return null;
    }
  }

  // static response401() async {
  //   await await customAlertMessage(
  //       txt: 'برجاء تسجيل الدخول مرة اخرى',
  //       alertType: 'عفواً',
  //       buildContext: navigatorKey.currentContext!,
  //       onClick: () {
  //         navigatorKey.currentContext!.pop();
  //       });
  //   return null;
  // }

  static checkIfREQUESTHTML(apiURL) {
    bool contain = false;
    apiRequestHTML.split(',').forEach((element) {
      contain = apiURL.toString().contains(element);
    });
    return contain;
  }

  static String getPlatformName() {
    if (kIsWeb) {
      return "Android";
    } else {
      return Platform.operatingSystem.toString();
    }
  }
}

/*processToLogin() {
  goBack();
  generalData.screenToBack =
      Get.currentRoute ;

  goToScreen(screenNames: ScreenNames.loginScreen);
}}*/
enum ActionType { get, post }
