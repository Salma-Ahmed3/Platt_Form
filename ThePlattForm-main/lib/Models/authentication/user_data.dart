class UserData {
  User? user;
  String? token;
  bool? twoFactorAuthEnabled;

  UserData({
    this.user,
    this.token,
    this.twoFactorAuthEnabled,
  });
  UserData.fromJson(Map<String, dynamic> json) {
    user = (json["user"] != null) ? User.fromJson(json["user"]) : null;
    token = json["token"]?.toString();
    twoFactorAuthEnabled = json["twoFactorAuthEnabled"];
  }

  String? get text => null;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data["user"] = user!.toJson();
    }
    data["token"] = token;
    data["twoFactorAuthEnabled"] = twoFactorAuthEnabled;
    return data;
  }
}

class User {
  String? userName;
  bool? phoneNumberConfirmed;
  int? accountType;
  String? crmUserId;
  String? id;
  String? email;
  String? otherMobilePhone;
  String? phoneNumber;
  String? image;
  String? createdBy;
  String? createdOn;
  String? modifiedBy;
  String? modifiedOn;
  bool? isDeleted;
  bool? isDeactivated;
  String? name;
  String? deletedOn;
  String? deletedBy;
  String? ownerId;
  String? owner;

  User({
    this.userName,
    this.phoneNumberConfirmed,
    this.otherMobilePhone,
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
  User.fromJson(Map<String, dynamic> json) {
    userName = json["userName"]?.toString();
    phoneNumberConfirmed = json["phoneNumberConfirmed"];
    otherMobilePhone = json["otherMobilePhone"];
    accountType = json["accountType"]?.toInt();
    crmUserId = json["crmUserId"]?.toString();
    id = json["id"]?.toString();
    email = json["email"]?.toString();
    phoneNumber = json["phoneNumber"]?.toString();
    image = json["image"]?.toString();
    createdBy = json["createdBy"]?.toString();
    createdOn = json["createdOn"]?.toString();
    modifiedBy = json["modifiedBy"]?.toString();
    modifiedOn = json["modifiedOn"]?.toString();
    isDeleted = json["isDeleted"];
    isDeactivated = json["isDeactivated"];
    name = json["name"]?.toString();
    deletedOn = json["deletedOn"]?.toString();
    deletedBy = json["deletedBy"]?.toString();
    ownerId = json["ownerId"]?.toString();
    owner = json["owner"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["userName"] = userName;
    data["phoneNumberConfirmed"] = phoneNumberConfirmed;
    data["otherMobilePhone"] = otherMobilePhone;
    data["accountType"] = accountType;
    data["crmUserId"] = crmUserId;
    data["id"] = id;
    data["email"] = email;
    data["phoneNumber"] = phoneNumber;
    data["image"] = image;
    data["createdBy"] = createdBy;
    data["createdOn"] = createdOn;
    data["modifiedBy"] = modifiedBy;
    data["modifiedOn"] = modifiedOn;
    data["isDeleted"] = isDeleted;
    data["isDeactivated"] = isDeactivated;
    data["name"] = name;
    data["deletedOn"] = deletedOn;
    data["deletedBy"] = deletedBy;
    data["ownerId"] = ownerId;
    data["owner"] = owner;
    return data;
  }
}
