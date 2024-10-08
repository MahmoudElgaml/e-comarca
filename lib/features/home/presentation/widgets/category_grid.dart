import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/title_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../manager/category_home_cubit.dart';
import '../pages/home_feature_screen.dart';
import 'costume_category.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryHomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeFailureState) {
          const Center(
            child: Text(
              " غلططط يا صحبي",
              style: TextStyle(fontSize: 30),
            ),
          );
        } else if (state is HomeSuccessState) {
          return Column(

            children: [
              const TitleRow(title: AppString.category,),
              Gap(16),
              SizedBox(
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
                    onTap: () => context.push(AppRoute.productsScreen,
                        extra: state.categoryEntity.data![index].id),
                    child: CostumeCategory(
                      category: state.categoryEntity.data,
                      index: index,
                    ),
                  ),
                  itemCount: state.categoryEntity.data!.length,
                ),
              ),
            ],
          );
        }
        return const BuildLoadingHome();
      },
    );
  }
}
