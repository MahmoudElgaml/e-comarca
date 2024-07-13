part of 'sub_category_cubit.dart';

@immutable
abstract class SubCategoryState {}

class SubCategoryInitial extends SubCategoryState {}
class SubCategoryLoadingState extends SubCategoryState{}


class SubCategorySuccessState extends SubCategoryState {
  final SubCategoryEntity subCategoryEntity;

  SubCategorySuccessState(this.subCategoryEntity);
}

class SubCategoryFailState extends SubCategoryState {
  final String message;

  SubCategoryFailState(this.message);
}