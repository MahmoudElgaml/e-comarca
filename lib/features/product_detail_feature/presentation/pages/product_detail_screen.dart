import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/pick_color_list.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/pick_size_list.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/price_addtocart_widget.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/widgets/product_info_widget.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("products details", style: AppStyle.styleMedium20(context)),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 35,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductInfoWidget(),
              Gap(16),
              PickSizeList(),
              Gap(16),
              PickColorList(),
              Gap(48),
              PriceAddToCartWidget()
            ],
          ),
        ),
      ),
    );
  }
}
