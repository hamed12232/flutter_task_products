

import 'package:dio/dio.dart';
import 'package:flutter_task_products/core/api/api_constant.dart';
import 'package:flutter_task_products/core/api/api_consumer.dart';

class DioServices extends ApiConsumer {
  Dio dio;

  DioServices({required this.dio}) {
    dio.options.baseUrl = ApiConstant.baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);
  }

  @override
  

  @override
  Future get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Response response = await dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }  
  
}
