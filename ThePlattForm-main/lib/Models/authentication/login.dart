class Login {
  Login({
    this.userName,
    this.password,
  });

  String? userName;
  String? password;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    userName: json["UserName"],
    password: json["Password"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "password": password,
  };
}
class UserSignUP {
  UserSignUP({
    this.userName,
    this.phoneNumberConfirmed,
    this.accountType,
    this.crmUserId,
    this.id,
    this.email,
    this.phoneNumber,
    this.image,
    this.createdBy,
    this.createdOn,
    this.modifiedBy,
    this.modifiedOn,
    this.isDeleted,
    this.isDeactivated,
    this.name,
    this.deletedOn,
    this.deletedBy,
    this.ownerId,
    this.owner,
  });

  String? userName;
  bool? phoneNumberConfirmed;
  int? accountType;
  String? crmUserId;
  String? id;
  String? email;
  String? phoneNumber;
  dynamic image;
  dynamic createdBy;
  String? createdOn;
  dynamic modifiedBy;
  String? modifiedOn;
  bool? isDeleted;
  bool? isDeactivated;
  String? name;
  dynamic deletedOn;
  dynamic deletedBy;
  dynamic ownerId;
  dynamic owner;

  factory UserSignUP.fromJson(Map<String, dynamic> json) => UserSignUP(
    userName: json["userName"],
    phoneNumberConfirmed: json["phoneNumberConfirmed"],
    accountType: json["accountType"],
    crmUserId: json["crmUserId"],
    id: json["id"],
    email: json["email"],
    phoneNumber: json["phoneNumber"],
    image: json["image"],
    createdBy: json["createdBy"],
    createdOn: json["createdOn"],
    modifiedBy: json["modifiedBy"],
    modifiedOn: json["modifiedOn"],
    isDeleted: json["isDeleted"],
    isDeactivated: json["isDeactivated"],
    name: json["name"],
    deletedOn: json["deletedOn"],
    deletedBy: json["deletedBy"],
    ownerId: json["ownerId"],
    owner: json["owner"],
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "phoneNumberConfirmed": phoneNumberConfirmed,
    "accountType": accountType,
    "crmUserId": crmUserId,
    "id": id,
    "email": email,
    "phoneNumber": phoneNumber,
    "image": image,
    "createdBy": createdBy,
    "createdOn": createdOn,
    "modifiedBy": modifiedBy,
    "modifiedOn": modifiedOn,
    "isDeleted": isDeleted,
    "isDeactivated": isDeactivated,
    "name": name,
    "deletedOn": deletedOn,
    "deletedBy": deletedBy,
    "ownerId": ownerId,
    "owner": owner,
  };
}
