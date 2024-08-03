import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/use_cases/add_to_cart_use_case.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/use_cases/delete_from_cart_use_cas.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/use_cases/get_cart_data_use_case.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/use_cases/update_product_quantity_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'get_cart_product_state.dart';

@injectable
class GetCartProductCubit extends Cubit<GetCartProductState> {
  GetCartProductCubit(this.cartDataUseCase, this.addToCartUseCase,
      this.deleteFromCartUseCas, this.updateProductQuantityUseCase)
      : super(GetCartProductInitial());
  GetCartDataUseCase cartDataUseCase;
  AddToCartUseCase addToCartUseCase;
  DeleteFromCartUseCas deleteFromCartUseCas;
  UpdateProductQuantityUseCase updateProductQuantityUseCase;
  CartDataEntity? cartData;

  static GetCartProductCubit get(context) => BlocProvider.of(context);

  getCartProduct() async {
    var result = await cartDataUseCase.call();
    emit(GetCartProductLoadingState());
    result.fold(
      (l) {
        if (l.statusCode == "401") {
          emit(GetCartProductUnLoggedState());
        } else if (l.statusCode == "404") {
          emit(GetCartProductEmptyState());
        } else {
          emit(GetCartProductFailState(l.message));
        }
      },
      (r) {
        cartData = r;

        emit(GetCartProductSuccessState());
      },
    );
  }

  addToCart(String productId) async {
    emit(GetCartProductLoadingState());
    var result = await addToCartUseCase.call(productId);
    result.fold(
      (l) {
        if (l.statusCode == "401") {
          emit(GetCartProductUnLoggedState());
        } else if (l.statusCode == "404") {
          emit(GetCartProductEmptyState());
        } else {
          emit(GetCartProductFailState(l.message));
        }
      },
      (r) {
        emit(GetCartProductSuccessState());
      },
    );
  }

  deleteFromCart(String productId) async {
    emit(GetCartProductLoadingState());
    var result = await deleteFromCartUseCas.call(productId);
    result.fold(
      (l) {
        emit(GetCartProductFailState(l.message));
      },
      (r) {
        emit(GetCartProductSuccessState());
        getCartProduct();
      },
    );
  }

  updateProductQuantity(String productId,String count) async {
    emit(GetCartProductLoadingState());
    var result = await updateProductQuantityUseCase.call(productId, count);
    result.fold(
      (l) {
        emit(GetCartProductFailState(l.message));
      },
      (r) {
        emit(GetCartProductSuccessState());
        getCartProduct();
      },
    );
  }
}
