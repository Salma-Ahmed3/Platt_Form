
import 'package:nowproject/Models/authentication/login.dart';

class ReGenerateCodeResult {
  ReGenerateCodeResult({
    this.code,
  });

  String? code;

  factory ReGenerateCodeResult.fromJson(Map<String, dynamic> json) =>
      ReGenerateCodeResult(
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
      };
}

class ReGenerateCodePost {
  ReGenerateCodePost({
    this.phoneNumber,
    this.userId,
  });

  String? phoneNumber;
  String? userId;

  factory ReGenerateCodePost.fromJson(Map<String, dynamic> json) =>
      ReGenerateCodePost(
        phoneNumber: json["phoneNumber"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "phoneNumber": phoneNumber,
        "userId": userId,
      };
}

class VerifyCodePost {
  VerifyCodePost({
    this.code,
    this.userId,
    this.phoneNumber,
    this.password,
  });

  String? code;
  String? userId;
  String? phoneNumber;
  String? password;

  factory VerifyCodePost.fromJson(Map<String, dynamic> json) => VerifyCodePost(
        code: json["code"],
        userId: json["userId"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "userId": userId,
        "phoneNumber": phoneNumber,
        "password": password,
      };
}

class VerifyCodeResult {
  VerifyCodeResult({
    this.code,
    this.user,
    this.isGiftFound,
    this.userPoint,
    this.accessToken,
  });

  String? code;
  UserSignUP? user;
  bool? isGiftFound;
  int? userPoint;
  dynamic accessToken;

  factory VerifyCodeResult.fromJson(Map<String, dynamic> json) =>
      VerifyCodeResult(
        code: json["code"],
        user: UserSignUP.fromJson(json["user"]),
        isGiftFound: json["isGiftFound"],
        userPoint: json["userPoint"],
        accessToken: json["accessToken"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "user": user!.toJson(),
        "isGiftFound": isGiftFound,
        "userPoint": userPoint,
        "accessToken": accessToken,
      };
}
