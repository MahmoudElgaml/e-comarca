part of 'get_product_cubit.dart';

@immutable
abstract class GetProductState {}

class GetProductInitial extends GetProductState {}
class GetProductLoadingState extends GetProductState {}
class GetProductSuccessState extends GetProductState {}
class GetProductFailState extends GetProductState {
  String message;

  GetProductFailState(this.message);
}

