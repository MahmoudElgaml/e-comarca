import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/category2_entiny.dart';
import 'package:e_comarce_clean/features/category_feature/domain/use_cases/get_category_usecase.dart';
import 'package:e_comarce_clean/features/category_feature/domain/use_cases/get_subcategory_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/SubCategoryEntity.dart';

part 'category_state.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState> {
  static CategoryCubit get(context) => BlocProvider.of(context);

  List<CategoryData2>categories = [];
  int selectedIndex=0;

  CategoryCubit(this.categoryUseCase) : super(CategoryInitial());
  GetCategoryUseCase categoryUseCase;

  getCategory() async {
    emit(CategoryLoadingState());
    var result = await categoryUseCase.call();
    result.fold(
      (l) => emit(CategoryFailState(l.message)),
      (r) {
        categories=r.data??[];
        emit(CategorySuccessState());
      },
    );
  }
  changeIndex(int index){

    selectedIndex=index;
    emit(CategoryIndexChangeState());

  }
}
