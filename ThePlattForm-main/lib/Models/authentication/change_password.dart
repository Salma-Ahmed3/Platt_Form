class ChangePassword {
  ChangePassword({
    this.userId,
    this.oldPassword,
    this.newPassword,
    this.confirmPassword,
  });

  String? userId;
  String? oldPassword;
  String? newPassword;
  String? confirmPassword;

  factory ChangePassword.fromJson(Map<String, dynamic> json) => ChangePassword(
    userId: json["userId"],
    oldPassword: json["oldPassword"],
    newPassword: json["newPassword"],
    confirmPassword: json["confirmPassword"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "oldPassword": oldPassword,
    "newPassword": newPassword,
    "confirmPassword": confirmPassword,
  };
}