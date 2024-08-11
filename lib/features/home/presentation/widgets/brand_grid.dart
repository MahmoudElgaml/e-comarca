import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/features/home/domain/entities/BrandEntity.dart';
import 'package:e_comarce_clean/features/home/presentation/manager/brand_home_cubit.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/custom_brand_item.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/title_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';

class BrandGrid extends StatelessWidget {
  const BrandGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleRow(title: AppString.brand),
        Gap(20),
        BlocBuilder<BrandHomeCubit, BrandHomeState>(
          builder: (context, state) {
            if (state is BrandHomeFailState) {
              return ErrorWidget(state.message);
            } else if (state is BrandHomeSuccessState) {
              return SizedBox(
                height: 320,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1.3,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => CustomBrandItem(
                    brand: state.brands?[index],
                  ),
                  itemCount: state.brands?.length,
                ),
              );
            }
            return const BuildLoadingHome();
          },
        ),
      ],
    );
  }
}
