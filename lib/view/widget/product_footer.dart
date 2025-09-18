
import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/spacing/vertical_space.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';
import 'package:flutter_task_products/core/utils/app_hight.dart';

class ProductFooter extends StatelessWidget {
  final double rating;
  const ProductFooter({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Review (${rating.toStringAsFixed(1)})',
              style: TextStyle(
                color: AppColors.titleProductColor,
                fontSize: 13,
              ),
            ),
          VerticalSpace(height: AppHight.h4),
            const Icon(Icons.star, color: Colors.amber, size: 16),
          ],
        ),
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: AppColors.addToCartProductColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ],
    );
  }
}
