import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';
import 'package:flutter_task_products/view/widget/product_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Map<String, dynamic>> _products = [
    {
      'title': 'Nike Air Jordon',
      'subtitle': 'Nike shoes flexible for wo...',
      'price': 'EGP 1,200',
      'oldPrice': '2000 EGP',
      'rating': 4.6,
      'image': 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=800&auto=format&fit=crop',
    },
    {
      'title': 'Nike Air Jordon',
      'subtitle': 'Nike shoes flexible for wo...',
      'price': 'EGP 1,100',
      'oldPrice': '1,500 EGP',
      'rating': 4.5,
      'image': 'https://images.unsplash.com/photo-1519741497674-611481863552?q=80&w=800&auto=format&fit=crop',
    },
    {
      'title': 'Nike Air Jordon',
      'subtitle': 'Nike shoes flexible for wo...',
      'price': 'EGP 1,000',
      'oldPrice': '1,300 EGP',
      'rating': 4.8,
      'image': 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=800&auto=format&fit=crop',
    },
    {
      'title': 'Nike Air Jordon',
      'subtitle': 'Nike shoes flexible for wo...',
      'price': 'EGP 1,500',
      'oldPrice': '2000 EGP',
      'rating': 4.8,
      'image': 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=800&auto=format&fit=crop',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: _products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.74,
            ),
            itemBuilder: (context, index) {
              final product = _products[index];
              return ProductCard(
                title: product['title'],
                subtitle: product['subtitle'],
                price: product['price'],
                oldPrice: product['oldPrice'],
                rating: product['rating'],
                imageUrl: product['image'],
              );
            },
          ),
        ),
      ),
    );
  }
}

