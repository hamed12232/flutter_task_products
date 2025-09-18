import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';

class ProductPrice extends StatelessWidget {
  final double price;
  final double oldPrice;
  const ProductPrice({super.key, required this.price, required this.oldPrice});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$price",
          style: TextStyle(
            color: AppColors.discountProductColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          (price-100).toStringAsFixed(2),
          style: TextStyle(
            color: AppColors.addToCartProductColor,
            fontSize: 12,
            decoration: TextDecoration.lineThrough,
          ),
        ),
      ],
    );
  }
}
