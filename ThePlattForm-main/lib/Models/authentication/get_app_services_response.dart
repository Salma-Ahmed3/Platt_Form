class GetResponse {
  GetResponse({
    this.status,
    this.code,
    this.data,
    this.location,
    this.message,
  });

  int? status;
  dynamic code;
  dynamic data;
  dynamic location;
  dynamic message;

  factory GetResponse.fromJson(Map<String, dynamic> json) => GetResponse(
    status: json["status"],
    data: json["data"],
    location: json["location"],
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data,
    "location": location,
    "code": code,
    "message": message,
  };
}