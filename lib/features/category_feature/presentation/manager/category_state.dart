part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategorySuccessState extends CategoryState {
  final Category2Entity category2entity;

  CategorySuccessState(this.category2entity);
}

class CategoryFailState extends CategoryState {
  final String message;

  CategoryFailState(this.message);
}


