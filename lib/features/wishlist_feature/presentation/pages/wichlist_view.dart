import 'package:e_comarce_clean/core/utils/cpmponents/product_cart.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:flutter/material.dart';
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
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => const ProductCart(isCart: false),
              separatorBuilder: (context, index) => const Gap(20),
              itemCount:0,
            ),
          )
        ],
      ),
    );
  }
}
