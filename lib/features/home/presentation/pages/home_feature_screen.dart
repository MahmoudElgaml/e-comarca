import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/home/presentation/manager/home_cubit.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_appbar.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_category.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/title_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
            const Gap(24),
            const TitleRow(),
            const Gap(16),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeFailureState) {
                  const Center(
                    child: Text(
                      " غلططط يا صحبي",
                      style: TextStyle(fontSize: 30),
                    ),
                  );
                } else if (state is HomeSuccessState) {
                  return SizedBox(
                    height: 320,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        childAspectRatio: 1.3,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => context.push(
                            AppRoute.productsScreen,
                            extra: state.categoryEntity.data![index].id),
                        child: CostumeCategory(
                          category: state.categoryEntity.data,
                          index: index,
                        ),
                      ),
                      itemCount: state.categoryEntity.data!.length,
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            )
          ],
        ),
      ),
    );
  }
}
