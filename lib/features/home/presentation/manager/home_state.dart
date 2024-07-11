part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeSuccessState extends HomeState {
  final CategoryEntity categoryEntity;

  HomeSuccessState(this.categoryEntity);
}
class HomeLoadingState extends HomeState {}
class HomeFailureState extends HomeState {
  final String message;

  HomeFailureState(this.message);
}
