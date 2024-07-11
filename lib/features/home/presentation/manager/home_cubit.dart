import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:e_comarce_clean/features/home/domain/use_cases/get_all_category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.getAllCategoryUseCase) : super(HomeInitial());
  GetAllCategoryUseCase getAllCategoryUseCase;

  static HomeCubit get(context) => BlocProvider.of(context);

  getAllCategory() async {
    emit(HomeLoadingState());

    var category = await getAllCategoryUseCase.call();
    category.fold(
      (l) => emit(HomeFailureState(l.message)),
      (r) => emit(HomeSuccessState(r)),
    );
  }
}
