import 'package:dio/dio.dart';

class ServerFailure implements Exception {
  final String message;
  final Map<String, dynamic> data;

  ServerFailure({required this.message, this.data = const {}});
}

void handleDioException(Object e) {
  if (e is DioException) {
    final responseData = e.response?.data as Map<String, dynamic>? ?? {};
    final statusCode = e.response?.statusCode;

    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerFailure(message: "Connection timeout", data: responseData);

      case DioExceptionType.sendTimeout:
        throw ServerFailure(message: "Send timeout", data: responseData);

      case DioExceptionType.receiveTimeout:
        throw ServerFailure(message: "Receive timeout", data: responseData);

      case DioExceptionType.badCertificate:
        throw ServerFailure(message: "Bad certificate", data: responseData);

      case DioExceptionType.badResponse:
        switch (statusCode) {
          case 400:
            throw ServerFailure(message: "Bad request", data: responseData);
          case 401:
            throw ServerFailure(message: "Unauthorized", data: responseData);
          case 403:
            throw ServerFailure(message: "Forbidden", data: responseData);
          case 404:
            throw ServerFailure(message: "Not found", data: responseData);
          case 500:
            throw ServerFailure(message: "Internal server error", data: responseData);
          default:
            throw ServerFailure(
              message: "Unexpected error (status: $statusCode)",
              data: responseData,
            );
        }

      case DioExceptionType.cancel:
        throw ServerFailure(message: "Request cancelled", data: responseData);

      case DioExceptionType.connectionError:
        throw ServerFailure(message: "Connection error", data: responseData);

      case DioExceptionType.unknown:
        throw ServerFailure(message: "Unknown error", data: responseData);
    }
  } else {
    throw Exception("Unexpected error: $e");
  }
}
