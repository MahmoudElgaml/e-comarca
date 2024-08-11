import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/home/domain/entities/BrandEntity.dart';
import 'package:e_comarce_clean/features/home/domain/use_cases/get_all_brand_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'brand_home_state.dart';

@injectable
class BrandHomeCubit extends Cubit<BrandHomeState> {
  BrandHomeCubit(this.getAllBrandUseCase) : super(BrandHomeInitial());
  GetAllBrandUseCase getAllBrandUseCase;

  @override
  void emit(BrandHomeState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }

  getAllBrand() async {
    emit(BrandHomeLoadingState());
    var result = await getAllBrandUseCase.call();
    result.fold(
      (failure) {
        emit(BrandHomeFailState(failure.message));
      },
      (brand) {
        emit(BrandHomeSuccessState(brand.data));
      },
    );
  }
}
