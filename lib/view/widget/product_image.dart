import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_hight.dart';
import 'package:flutter_task_products/view/widget/favoriteButton.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  const ProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHight.h100,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) {
                return const Center(
                  child: Icon(Icons.error, color: Colors.red),
                );
              },
            ),
          ),
          const Positioned(top: 10, right: 10, child: FavoriteButton()),
        ],
      ),
    );
  }
}
