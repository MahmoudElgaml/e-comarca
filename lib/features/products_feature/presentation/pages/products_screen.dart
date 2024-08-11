import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/core/services/snack_bar_services.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_item.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/products_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../cart_feature/presentation/manager/get_cart_product_cubit.dart';
import '../../../wishlist_feature/presentation/manager/wishlist_cubit.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final String categoryId = GoRouterState.of(context).extra! as String;
    final GetCartProductCubit cartCubit = getIt<GetCartProductCubit>();
    var wishCubit = getIt<WishlistCubit>();
    return BlocListener<GetCartProductCubit, GetCartProductState>(
      bloc: cartCubit,
      listener: (context, state) {
        if (state is GetCartProductLoadingState) {
          EasyLoading.show();
        } else if (state is GetCartProductUnLoggedState) {
          EasyLoading.dismiss();
          SnackBarServices.showUnLoggedMessage(context);
        } else if (state is GetCartProductSuccessState) {
          EasyLoading.dismiss();
          EasyLoading.showSuccess("add Successfully",
              duration: const Duration(milliseconds: 500));
        }
      },
      child: BlocListener<WishlistCubit, WishlistState>(
        bloc: wishCubit,
        listener: (context, state) {
          if (state is WishlistUnLoggedState) {
            EasyLoading.dismiss();
            SnackBarServices.showUnLoggedMessage(context);
          } else if (state is WishlistLoadingState) {
            EasyLoading.show();
          } else if (state is WishlistSuccessState) {
            EasyLoading.dismiss();
          } else if (state is WishlistFailureState) {
            showDialog(
              context: context,
              builder: (context) => Text(state.message),
            );
          }
        },
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 40,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CostumeAppBar(),
                  const SizedBox(height: 24),
                  ProductsGrid(cartCubit: cartCubit,
                    categoryId: categoryId,
                    wishCubit: wishCubit,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
