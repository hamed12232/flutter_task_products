import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task_products/core/Di/get_it.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';
import 'package:flutter_task_products/model/product_model.dart';
import 'package:flutter_task_products/view/widget/product_card.dart';
import 'package:flutter_task_products/viewModel/cubit/products_cubit.dart';
import 'package:shimmer/shimmer.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late ProductsCubit _productsCubit;

  @override
  void initState() {
    super.initState();
    _productsCubit = sl<ProductsCubit>();
    _productsCubit.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider.value(
        value: _productsCubit,
        child: Scaffold(
          backgroundColor: AppColors.primary,
          body: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              if (state is ProductsLoading) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: GridView.builder(
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.74,
                        ),
                    itemBuilder: (context, index) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 4),
                        ),
                      );
                    },
                  ),
                );
              } else if (state is ProductsError) {
                return Center(child: Text(state.message));
              } else if (state is ProductsLoaded) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: GridView.builder(
                    itemCount: state.products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.74,
                        ),
                    itemBuilder: (context, index) {
                      ProductModel product = state.products[index];
                      return ProductCard(
                        title: product.title,
                        price: product.price,
                        imageUrl: product.image,
                        rating: product.rating.rate,
                        subtitle: product.description,
                      );
                    },
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
