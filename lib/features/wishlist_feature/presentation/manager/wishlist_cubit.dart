import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/use_cases/get_wishlist_data_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'wishlist_state.dart';

@injectable
class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this.wishlistDataUseCase) : super(WishlistInitial());
  GetWishlistDataUseCase wishlistDataUseCase;
  WishProductEntity? wishProductEntity;

  getWishlistProduct() async {
    emit(WishlistLoadingState());
    var result = await wishlistDataUseCase.call();

    result.fold(
      (l) {
        if (l.statusCode == "401") {
          emit(WishlistUnLoggedState());
        } else {
          emit(WishlistFailureState(l.message));
        }
      },
      (r) {
        wishProductEntity = r;

        emit(WishlistSuccessState());
      },
    );
  }
}
