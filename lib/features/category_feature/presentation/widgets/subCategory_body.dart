import 'package:e_comarce_clean/features/category_feature/presentation/widgets/subCategorye_grid.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';
import '../../../../generated/assets.dart';
import '../manager/sub_category_cubit.dart';

class SubcategoryBody extends StatelessWidget {
  const SubcategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SizedBox(height: 16),
        Image.asset(
          Assets.imagesCategoryOfferImage,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        const SizedBox(height: 16),
        const SubcategoryGrid(),
      ],
    );
  }
}
