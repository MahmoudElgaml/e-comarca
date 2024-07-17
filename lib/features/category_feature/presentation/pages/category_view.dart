import 'package:e_comarce_clean/features/category_feature/presentation/widgets/subCategory_body.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/catgory_body.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CostumeAppBar(),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: CategoryBody()),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  flex: 2,
                  child: SubcategoryBody(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
