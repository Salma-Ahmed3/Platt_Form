class ForgotPasswordPost {
  ForgotPasswordPost({
    this.phoneNumber,
  });

  String? phoneNumber;

  factory ForgotPasswordPost.fromJson(Map<String, dynamic> json) =>
      ForgotPasswordPost(
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
    "phoneNumber": phoneNumber,
  };
}
class ForgotPasswordCodeResult {
  ForgotPasswordCodeResult({
    this.code,
  });

  String? code;

  factory ForgotPasswordCodeResult.fromJson(Map<String, dynamic> json) =>
      ForgotPasswordCodeResult(
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
    "code": code,
  };
}
class ResetPasswordPost {
  ResetPasswordPost({
    this.code,
    this.password,
    this.confirmPassword,
    this.phoneNumber,
  });

  String? code;
  String? password;
  String? confirmPassword;
  String? phoneNumber;

  factory ResetPasswordPost.fromJson(Map<String, dynamic> json) =>
      ResetPasswordPost(
        code: json["code"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toJson() => {
    "code": code,
    "password": password,
    "confirmPassword": confirmPassword,
    "phoneNumber": phoneNumber,
  };
}