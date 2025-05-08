import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure("connection timeout with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was canceld");
      case DioExceptionType.connectionError:
        return ServerFailure("No internet connection");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error , please try again");
      default:
        return ServerFailure('opps there was an error , please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , please try later !');
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error , please try later !");
    } else {
      return ServerFailure('opps there was an error , please try again');
    }
  }
}
