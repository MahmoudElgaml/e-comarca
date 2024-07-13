import 'package:e_comarce_clean/features/category_feature/presentation/manager/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/sub_category_cubit.dart';
import 'category_item.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}


class _CategoryBodyState extends State<CategoryBody> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.sizeOf(context).height - 230,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        border: Border(
          left: BorderSide(
            width: 1,
            color: Color(0x4C004182),
          ),
          top: BorderSide(
            width: 1,
            color: Color(0x4C004182),
          ),
        ),
      ),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoryFailState) {
            return Center(child: Text(state.message));
          }
          if (state is CategorySuccessState) {
            return ListView.builder(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    selectIndex = index;
                    SubCategoryCubit.get(context).getSubCategory(state.category2entity.data![index].id!);
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CategoryItem(
                        category: state.category2entity.data![index],
                        isSelected: index == selectIndex),
                  )),
              itemCount: 10,
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
