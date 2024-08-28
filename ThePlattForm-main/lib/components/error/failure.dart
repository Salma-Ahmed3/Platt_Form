import 'package:http/http.dart' as http;

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromHttpError(http.Response response) {
    return ServerFailure.fromResponse(response.statusCode, response.body);
  }

  factory ServerFailure.fromException(Exception exception) {
    if (exception is http.ClientException) {
      return ServerFailure('No Internet Connection');
    } else {
      return ServerFailure('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Oops, There was an Error, Please try again');
    }
  }
}
