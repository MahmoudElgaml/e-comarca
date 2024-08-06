import 'package:e_comarce_clean/core/services/rectangle_shimmer.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/manager/get_cart_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_item.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../config/routes/routes.dart';
import '../manager/get_product_cubit.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid(
      {super.key,
      required this.categoryId,
      required this.cartCubit,
      required this.wishCubit});

  final String categoryId;
  final GetCartProductCubit cartCubit;
  final WishlistCubit wishCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      bloc: GetProductCubit.get(context)..getProductBaseOnCategory(categoryId),
      builder: (context, state) {
        if (state is GetProductFailState) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is GetProductSuccessState) {
          return Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 191 / 270,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: () => context.push(
                  AppRoute.productsDetailScreen,
                  extra: GetProductCubit.get(context).products![index],
                ),
                child: ProductItem(
                  wishlistCubit: wishCubit,
                  cartCubit: cartCubit,
                  product: GetProductCubit.get(context).products![index],
                ),
              ),
              itemCount: GetProductCubit.get(context).products!.length,
            ),
          );
        } else {
          return const ProductsScreenLoading();
        }
      },
    );
  }
}

class ProductsScreenLoading extends StatelessWidget {
  const ProductsScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: Colors.black,
        highlightColor: Colors.grey[100]!,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 191 / 270,
          ),
          itemBuilder: (context, index) {
            return const Skeleton(height: 270, width: 191);
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
