
import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';

class ProductTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProductTitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppColors.titleProductColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 1),
        Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: AppColors.titleProductColor, fontSize: 13,
                      fontWeight: FontWeight.w500,

          ),
        ),
      ],
    );
  }
}
