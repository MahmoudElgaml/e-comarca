part of 'wishlist_cubit.dart';

@immutable
abstract class WishlistState {}

class WishlistInitial extends WishlistState {}
class WishlistLoadingState extends WishlistState {}
class WishlistSuccessState extends WishlistState {}
class WishlistFailureState extends WishlistState {
  final String message;

  WishlistFailureState(this.message);
}
class WishlistUnLoggedState extends WishlistState {}
