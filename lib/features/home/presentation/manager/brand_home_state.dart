part of 'brand_home_cubit.dart';

@immutable
abstract class BrandHomeState {}

class BrandHomeInitial extends BrandHomeState {}
class BrandHomeLoadingState extends BrandHomeState {}
class BrandHomeSuccessState extends BrandHomeState {
  final List<BrandDataEntity>? brands;

  BrandHomeSuccessState(this.brands);
}
class BrandHomeFailState extends BrandHomeState {
  final String message;

  BrandHomeFailState(this.message);
}

