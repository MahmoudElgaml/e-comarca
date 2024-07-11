part of 'home_layout_cubit.dart';

@immutable
abstract class HomeLayoutState {
  Widget get viewTap;
}

class HomeViewState extends HomeLayoutState {
  @override
  Widget get viewTap => BlocProvider(
        create: (context) => getIt<HomeCubit>()..getAllCategory(),
        child: const HomeScreen(),
      );
}

class CategoryViewState extends HomeLayoutState {
  @override
  Widget get viewTap => const CategoryView();
}

class WhichListViewState extends HomeLayoutState {
  @override
  Widget get viewTap => const WichListView();
}

class AccountViewState extends HomeLayoutState {
  @override
  Widget get viewTap => const AccountView();
}
