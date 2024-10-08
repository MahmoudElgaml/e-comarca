import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:e_comarce_clean/features/home/domain/use_cases/get_all_category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

@injectable
class CategoryHomeCubit extends Cubit<HomeState> {
  CategoryHomeCubit(this.getAllCategoryUseCase) : super(HomeInitial());
  GetAllCategoryUseCase getAllCategoryUseCase;

  static CategoryHomeCubit get(context) => BlocProvider.of(context);
  @override
  void emit(HomeState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
  getAllCategory() async {
    emit(HomeLoadingState());

    var category = await getAllCategoryUseCase.call();
    category.fold(
      (l) => emit(HomeFailureState(l.message)),
      (r) => emit(HomeSuccessState(r)),
    );
  }
}
