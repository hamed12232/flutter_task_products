import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(

        );
      },),
    );
  }
}