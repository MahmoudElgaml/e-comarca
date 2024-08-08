import 'package:e_comarce_clean/features/category_feature/presentation/manager/category_cubit.dart';
import 'package:e_comarce_clean/features/category_feature/presentation/manager/category_cubit.dart';
import 'package:e_comarce_clean/features/category_feature/presentation/widgets/sub_categoryItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/services/rectangle_shimmer.dart';
import '../manager/sub_category_cubit.dart';

class SubcategoryGrid extends StatelessWidget {
  const SubcategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategorySuccessState ||
            state is CategoryIndexChangeState) {
          return BlocBuilder<SubCategoryCubit, SubCategoryState>(
            bloc: SubCategoryCubit.get(context)
              ..getSubCategory(
                CategoryCubit.get(context)
                    .categories[CategoryCubit.get(context).selectedIndex]
                    .id!,
              ),
            builder: (context, state) {
              if (state is SubCategoryFailState) {
                return Center(
                  child: Text(state.message),
                );
              }

              if (state is SubCategorySuccessState) {
                return GridView.builder(
                  itemBuilder: (context, index) => SupCategoryItem(
                    subCategoryData: state.subCategoryEntity.data?[index],
                  ),
                  itemCount: state.subCategoryEntity.data!.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 70 / 96,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 13,
                    crossAxisCount: 3,
                  ),
                );
              }
              return const SubCategoryLoading();
            },
          );
        } else {
          return const SubCategoryLoading();
        }
      },
    );
  }
}

class SubCategoryLoading extends StatelessWidget {
  const SubCategoryLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: Colors.black,
        highlightColor: Colors.grey[100]!,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 70 / 96,
          ),
          itemBuilder: (context, index) {
            return const Skeleton(height: 70, width: 96);
          },
          itemCount: 8,
        ),
      ),
    );
  }
}
