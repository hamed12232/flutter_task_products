part of 'products_cubit.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class ProductsInitial extends ProductsState {}
final class ProductsLoading extends ProductsState {}
final class ProductsLoaded extends ProductsState {
  final List<ProductModel> products;
  const ProductsLoaded(this.products);
}
final class ProductsError extends ProductsState {
  final String message;
  const ProductsError(this.message);
}
