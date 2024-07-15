import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/products_feature/domain/use_cases/get_product_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/ProductEntity.dart';

part 'get_product_state.dart';

@injectable
class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.getAllProductUseCase) : super(GetProductInitial());

  static GetProductCubit get(context) => BlocProvider.of(context);
  List<Product>? products = [];
  GetAllProductUseCase getAllProductUseCase;

  getProductBaseOnCategory(String categoryId) async {
    emit(GetProductLoadingState());
    var result = await getAllProductUseCase.call(categoryId);
    result.fold(
      (l) {
        emit(GetProductFailState(l.message));
      },
      (r) {

        products = r.data ?? [];
        print(products![0].title);
        emit(GetProductSuccessState());

      },
    );
  }
}
