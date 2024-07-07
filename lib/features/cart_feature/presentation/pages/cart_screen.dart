import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: AppStyle.styleLight20(context),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 35,
              Icons.search,
              color: AppColor.primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 35,
              Icons.shopping_cart_outlined,
              color: AppColor.primaryColor,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => const ProductCart(
                  isCart: true,
                ),
                separatorBuilder: (context, index) => const Gap(20),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
