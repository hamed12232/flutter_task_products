import 'package:dartz/dartz.dart';
import 'package:flutter_task_products/model/product_model.dart';

abstract class ProductsRepositiory {
  Future<Either<String,ProductModel>> getAllProducts();
}