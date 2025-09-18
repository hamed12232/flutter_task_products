import 'package:flutter/material.dart';
import 'package:flutter_task_products/core/utils/app_colors.dart';
import 'package:flutter_task_products/core/utils/app_hight.dart';
import 'package:flutter_task_products/core/utils/app_width.dart';
import 'package:remixicon/remixicon.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Column(
          children: [
            Container(
              width: AppWidth.w170,
              height: AppHight.h220,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.borderProductColor,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/image.png",
                          width: AppWidth.w170,
                          height: AppHight.h100,),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),

                            child: Icon(
                              Remix.heart_2_line,
                              color: AppColors.addToCartProductColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Product Title",
                    style: TextStyle(
                      color: AppColors.titleProductColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$55.00",
                    style: TextStyle(
                      color: AppColors.discountProductColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
