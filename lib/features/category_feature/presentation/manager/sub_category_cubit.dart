import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/SubCategoryEntity.dart';
import '../../domain/use_cases/get_subcategory_usecase.dart';

part 'sub_category_state.dart';
@injectable
class SubCategoryCubit extends Cubit<SubCategoryState> {
  static SubCategoryCubit get(context) => BlocProvider.of(context);
  SubCategoryCubit(this.getSubCategoryUseCase) : super(SubCategoryInitial());

  GetSubcategoryUseCase getSubCategoryUseCase;
  @override
  void emit(SubCategoryState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
  getSubCategory(String categoryId) async {
    emit(SubCategoryLoadingState());
    var subcategory = await getSubCategoryUseCase.call(categoryId);
    subcategory.fold(
          (l) => emit(SubCategoryFailState(l.message)),
          (r) => emit(SubCategorySuccessState(r)),
    );
  }
}