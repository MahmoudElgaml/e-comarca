import 'package:e_comarce_clean/core/utils/cpmponents/no_loged_widget.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/product_cart.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class WichListView extends StatelessWidget {
  const WichListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CostumeAppBar(),
          const Gap(24),
          BlocConsumer<WishlistCubit, WishlistState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is WishlistUnLoggedState) {
                return const NoLoggedWidget();
              } else if (state is WishlistFailureState) {
                Center(
                  child: Text(state.message),
                );
              } else if (state is WishlistSuccessState) {
                List<WishProductDataEntity>? products =
                    WishlistCubit.get(context).wishProductEntity!.data;
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) =>  ProductCart(
                      wishProduct: products?[index],
                      isCart: false,
                    ),
                    separatorBuilder: (context, index) => const Gap(20),
                    itemCount: products?.length ?? 0,
                  ),
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          )
        ],
      ),
    );
  }
}
