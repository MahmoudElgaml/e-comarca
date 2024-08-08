import 'package:e_comarce_clean/core/services/rectangle_shimmer.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/no_loged_widget.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/product_cart.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/widgets/wishlist_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:gap/gap.dart';
import 'package:shimmer/shimmer.dart';

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
            listener: (context, state) {
              if (state is WishlistLoadingState) {
                EasyLoading.show();
              }
            },
            builder: (context, state) {
              if (state is WishlistUnLoggedState) {
                EasyLoading.dismiss();
                return const NoLoggedWidget();
              } else if (state is WishlistFailureState) {
                EasyLoading.dismiss();
                return Center(
                  child: Text(state.message),
                );
              } else if (state is WishlistSuccessState) {
                EasyLoading.dismiss();
                List<WishProductDataEntity>? products =
                    WishlistCubit.get(context).wishProductEntity!.data;
                return WishlistGrid(wishProducts: products);
              }

              return Expanded(child: const WishlistLoading());
            },
          )
        ],
      ),
    );
  }
}

class WishlistLoading extends StatelessWidget {
  const WishlistLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: Skeleton(
            height: 113,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
