import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_task_products/model/product_model.dart';
import 'package:flutter_task_products/services/products_repositiory.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productsRepositiory) : super(ProductsInitial());
  final ProductsRepositiory productsRepositiory;
  void getProducts() async {
    emit(ProductsLoading());
    final response = await productsRepositiory.getAllProducts();
    response.fold(
      (errorMessage) => emit(ProductsError(errorMessage)),
      (products) => emit(ProductsLoaded(products)),
    );
  }
}
