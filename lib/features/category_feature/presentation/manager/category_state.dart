part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategorySuccessState extends CategoryState {

}

class CategoryFailState extends CategoryState {
  final String message;

  CategoryFailState(this.message);
}
class CategoryIndexChangeState extends CategoryState {}


