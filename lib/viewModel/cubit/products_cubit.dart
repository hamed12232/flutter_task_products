import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_task_products/model/product_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
}
