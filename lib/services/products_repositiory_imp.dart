import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_task_products/core/api/api_constant.dart';
import 'package:flutter_task_products/core/api/dio_services.dart';
import 'package:flutter_task_products/model/product_model.dart';
import 'package:flutter_task_products/services/products_repositiory.dart';

class ProductsRepositioryImp extends ProductsRepositiory {
  DioServices dioServices;
  ProductsRepositioryImp(this.dioServices);
  @override
  Future<Either<String, ProductModel>> getAllProducts() async {
    try {
      final response = await dioServices.get(url: ApiConstant.getProducts);
      if (response.statusCode == 200) {
        final productModel = ProductModel.fromJson(response.data);
        return Right(productModel);
      } else {
        return Left("Error: ${response.statusCode}");
      }
    } on DioException catch (e) {
      return Left("Dio Exception: ${e.message}");
    } catch (e) {
      return Left("General Exception: ${e.toString()}");
    }
  }
}
