import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/no_loged_widget.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/product_cart.dart';
import 'package:e_comarce_clean/features/cart_feature/data/models/CartProductsModel.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<GetCartProductCubit, GetCartProductState>(
              builder: (context, state) {
                if (state is GetCartProductUnLoggedState) {
                  return const NoLoggedWidget();
                } else if (state is GetCartProductEmptyState) {
                  return const Center(
                    child: Text(
                      "no data go do some shopping",
                    ),
                  );
                } else if (state is GetCartProductFailState) {
                  return Center(
                    child: Text(
                      state.message,
                    ),
                  );
                } else if (state is GetCartProductSuccessState) {
                  List<CartProducts> products = GetCartProductCubit
                      .get(context)
                      .cartData!
                      .data!
                      .products ??
                      [];
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          ProductCart(
                            product: products[index],
                            isCart: true,
                          ),
                      separatorBuilder: (context, index) => const Gap(20),
                      itemCount: products.length,
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
