// ignore_for_file: unnecessary_null_in_if_null_operators

class SignUpUserPost {
  SignUpUserPost({
    this.userName,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.password,
    this.confirmPassword,
  });

  String? userName;
  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? password;
  String? confirmPassword ;

  factory SignUpUserPost.fromJson(Map<String, dynamic> json) => SignUpUserPost(
    userName: json["userName"] ?? null,
    firstName: json["firstName"] ?? null,
    middleName: json["middleName"] ?? null,
    lastName: json["lastName"] ?? null,
    email: json["email"] ?? null,
    password: json["password"] ?? null,
    confirmPassword: json["confirmPassword"] ?? null,
  );

  Map<String, dynamic> toJson() => {
    "userName": userName ?? null,
    "firstName": firstName ?? null,
    "middleName": middleName ?? null,
    "lastName": lastName ?? null,
    "email": email ?? null,
    "Password": password ?? null,
    "confirmPassword": confirmPassword ?? null,
  };
}
class SignUpUserResult {
  SignUpUserResult({
    this.phoneNumber,
    this.password,
    this.userId,
    this.rememberMe,
  });

  String? phoneNumber;
  String? password;
  String? code;
  String? userId;
  bool? rememberMe;

  factory SignUpUserResult.fromJson(Map<String, dynamic> json) =>
      SignUpUserResult(
        phoneNumber: json["phoneNumber"],
        password: json["password"],
        userId: json["userId"],
        rememberMe: json["rememberMe"],
      );

  Map<String, dynamic> toJson() => {
    "phoneNumber": phoneNumber,
    "password": password,
    "userId": userId,
    "rememberMe": rememberMe,
  };
}

