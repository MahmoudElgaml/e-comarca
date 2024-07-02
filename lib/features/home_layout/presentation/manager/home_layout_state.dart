part of 'home_layout_cubit.dart';

@immutable
abstract class HomeLayoutState {}

class HomeLayoutInitial extends HomeLayoutState {}
class HomeViewState extends HomeLayoutState {

final Widget homeViewScreen=const HomeScreen();

}
class CategoryViewState extends HomeLayoutState {
  final Widget categoryViewScreen=const CategoryView();
}
class WhichListViewState extends HomeLayoutState {
  final Widget wichListViewScreen=const WichListView();
}
class AccountViewState extends HomeLayoutState {
  final Widget accountViewScreen=const AccountView();
}

