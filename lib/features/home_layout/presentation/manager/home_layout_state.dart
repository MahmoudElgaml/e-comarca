part of 'home_layout_cubit.dart';

@immutable
abstract class HomeLayoutState {
  Widget get viewTap;
}

class HomeViewState extends HomeLayoutState {
  @override
  Widget get viewTap => BlocProvider(
        create: (context) => getIt<CategoryHomeCubit>()..getAllCategory(),
        child: const HomeScreen(),
      );
}

class CategoryViewState extends HomeLayoutState {
  @override
  Widget get viewTap => MultiBlocProvider(
    providers: [
      BlocProvider(create:  (context) => getIt<CategoryCubit>()..getCategory(), ),
      BlocProvider(create:  (context) => getIt<SubCategoryCubit>(), ),

    ],

      child: const CategoryView());
}

class WhichListViewState extends HomeLayoutState {
  @override
  Widget get viewTap =>  BlocProvider(
    create: (context) => getIt<WishlistCubit>()..getWishlistProduct(),
    child: const WichListView(),
  );
}

class AccountViewState extends HomeLayoutState {
  @override
  Widget get viewTap =>  BlocProvider(
  create: (context) => getIt<AccountCubit>()..isLogged(),
  child: AccountView(),
);
}
