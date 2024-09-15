import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/services/circle_shimmer.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/home/presentation/manager/category_home_cubit.dart';
import 'package:e_comarce_clean/core/utils/cpmponents/costume_appbar.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/category_grid.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_category.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/title_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../widgets/brand_grid.dart';
import '../widgets/costume_offer_image.dart';
import '../widgets/offer_image_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CostumeAppBar(),
            const Gap(16),
            const OfferImageList(),
            TextButton(
              onPressed: () => throw Exception(),
              child: const Text("Throw Test Exception"),
            ),
            const Gap(24),
            const CategoryGrid(),
            const Gap(15),
            const BrandGrid()
          ],
        ),
      ),
    );
  }
}

class BuildLoadingHome extends StatelessWidget {
  const BuildLoadingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: 320,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 1.3,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => const CircularSkeleton(
            size: 100,
          ),
        ),
      ),
    );
  }
}
