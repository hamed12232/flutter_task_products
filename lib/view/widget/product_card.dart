import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/spacing/vertical_space.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';
import 'package:flutter_task_products/core/utils/app_hight.dart';
import 'package:flutter_task_products/view/widget/product_footer.dart';
import 'package:flutter_task_products/view/widget/product_image.dart';
import 'package:flutter_task_products/view/widget/product_price.dart';
import 'package:flutter_task_products/view/widget/product_title.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;
  final double rating;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.borderProductColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(imageUrl: imageUrl),
          VerticalSpace(height: AppHight.h5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTitle(title: title, subtitle: subtitle),
                VerticalSpace(height: AppHight.h8),
                ProductPrice(price: price, oldPrice: price),
                VerticalSpace(height: AppHight.h8),
                ProductFooter(rating: rating),
                VerticalSpace(height: AppHight.h8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
