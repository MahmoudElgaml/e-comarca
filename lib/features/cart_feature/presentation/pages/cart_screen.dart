import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/widgets/product_cart.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cart",
          style: AppStyle.style20,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 35,
              Icons.search,
              color: AppColor.primaryColor,
            ),
          ),IconButton(
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
      body: const Padding(
        padding:  EdgeInsets.only(top: 32,left: 16,right: 16),
        child: Column(
          children: [
            ProductCart(),

          ],
        ),
      ),
    );
  }
}
