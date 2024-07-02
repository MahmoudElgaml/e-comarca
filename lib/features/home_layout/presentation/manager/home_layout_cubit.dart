import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/account_view.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

import '../../../home/presentation/pages/category_view.dart';
import '../../../home/presentation/pages/wichlist_view.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());

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
