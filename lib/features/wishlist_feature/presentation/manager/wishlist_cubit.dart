import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/use_cases/add_to_wishlist_use_case.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/use_cases/get_wishlist_data_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/delete_from_wishlist_use_case.dart';

part 'wishlist_state.dart';

@injectable
class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit(this.wishlistDataUseCase, this.addToWishlistUseCase,
      this.deleteFromWishlistUseCase)
      : super(WishlistInitial());
  GetWishlistDataUseCase wishlistDataUseCase;
  AddToWishlistUseCase addToWishlistUseCase;
  DeleteFromWishlistUseCase deleteFromWishlistUseCase;
  WishProductEntity? wishProductEntity;

  static WishlistCubit get(context) => BlocProvider.of(context);
  @override
  void emit(WishlistState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }

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

  addToWishlist(String productId) async {

    emit(WishlistLoadingState());
    var result = await addToWishlistUseCase.call(productId);

    result.fold(
      (l) {
        if (l.statusCode == "401") {
          emit(WishlistUnLoggedState());
        } else {
          emit(WishlistFailureState(l.message));
        }
      },
      (r) {
        emit(WishlistSuccessState());
      },
    );
  }

  deleteFromWishlist(String productId) async {

    emit(WishlistLoadingState());
    var result = await deleteFromWishlistUseCase.call(productId);

    result.fold(
      (l) {
        if (l.statusCode == "401") {
          emit(WishlistUnLoggedState());
        } else {
          emit(WishlistFailureState(l.message));
        }
      },
      (r) {
        emit(WishlistSuccessState());
        getWishlistProduct();
      },
    );
  }
}
