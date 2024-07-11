import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/features/account_feature/presentation/pages/account_view.dart';
import 'package:e_comarce_clean/features/category_feature/presentation/manager/category_cubit.dart';
import 'package:e_comarce_clean/features/home/presentation/manager/home_cubit.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../category_feature/presentation/pages/category_view.dart';
import '../../../wishlist_feature/presentation/pages/wichlist_view.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeViewState());
  static HomeLayoutCubit get(context)=>BlocProvider.of(context);
  viewTap(int index){
    switch(index){

      case 0:emit(HomeViewState());
      break;
      case 1:emit(CategoryViewState());
      break;
      case 2:emit(WhichListViewState());
      break;
      case 3:emit(AccountViewState());
      break;

    }


  }


}
