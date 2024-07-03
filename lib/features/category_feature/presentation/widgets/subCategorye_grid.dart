import 'package:e_comarce_clean/features/category_feature/presentation/widgets/sub_categoryItem.dart';
import 'package:flutter/material.dart';

class SubcategoryGrid extends StatelessWidget {
  const SubcategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => const SupCategoryItem(),
      itemCount: 4,
     shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 70 / 96,
          mainAxisSpacing: 16,
          crossAxisSpacing: 13,
          crossAxisCount: 3),
    );
  }
}
