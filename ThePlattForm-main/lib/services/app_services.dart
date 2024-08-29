import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nowproject/utility/app_setting.dart';
import 'package:pretty_http_logger/pretty_http_logger.dart';

class AppService {
  static String apikey =
      "UGFzc05BU0FQSUBOYXNBUElVc2VyMTIzQFBhc3M6TmFzQVBJVXNlcjEyM0B1c2Vy#";
  static String apiRequestHTML = "RequestTemplate,";
  static String platform = getPlatformName();

  static Future<Map<String, dynamic>?> callService({
    required ActionType actionType,
    required String apiName,
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,
  }) async {
    Random random = Random();
    String lang = 'ar';
    int timeX = 1000 + random.nextInt(1000);
    var apiUrl = Uri.https(
      AppSetting.serviceURL,
      "$lang/api/$apiName",
      query,
    );
    var header = {
      "content-type": 'application/json',
      "TimeX": timeX.toString(),
      "cache-control": "no-cache",
      "SignAuth": "$apikey${getSignature(apiUrl, timeX)}",
      "platform": platform,
      "version": '7.0.0',
      "source": "3",
      "Accept": 'application/json, text/plain, */*',
    };

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
            ? await http.get(apiUrl, headers: header)
            : await http.post(apiUrl, headers: header, body: json.encode(body));

        if (response.statusCode == 200) {
          return json.decode(response.body);
        } else {
          return {
            'status': response.statusCode,
            'message': 'Request failed with status: ${response.statusCode}',
          };
        }
      } else {
        return {
          'status': 500,
          'message': 'No internet connection.',
        };
      }
    } catch (e) {
      return {
        'status': 500,
        'message': 'An error occurred: $e',
      };
    }
  }

  static String getSignature(Uri url, int key) {
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

  static String getPlatformName() {
    return kIsWeb ? "Web" : Platform.operatingSystem;
  }
}

enum ActionType { get, post }
