part of 'get_cart_product_cubit.dart';

@immutable
abstract class GetCartProductState {}

class GetCartProductInitial extends GetCartProductState {}
class GetCartProductLoadingState extends GetCartProductState {}
class GetCartProductSuccessState extends GetCartProductState {}
class GetCartProductFailState extends GetCartProductState {
  final String message;

  GetCartProductFailState(this.message);
}
class GetCartProductUnLoggedState extends GetCartProductState {}
class GetCartProductEmptyState extends GetCartProductState {}
class AddToCartSuccessState extends GetCartProductState {}
