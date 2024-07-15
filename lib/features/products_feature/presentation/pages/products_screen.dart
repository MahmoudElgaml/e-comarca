import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_appbar.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    final String categoryId = GoRouterState.of(context).extra! as String;
    print(categoryId);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CostumeAppBar(),
              const SizedBox(height: 24),
              BlocBuilder<GetProductCubit, GetProductState>(
                bloc: GetProductCubit.get(context)
                  ..getProductBaseOnCategory(categoryId),
                builder: (context, state) {
                  if (state is GetProductFailState) {
                    return Center(child: Text(state.message));
                  }
                  if(state is GetProductSuccessState){
                   // print(GetProductCubit.get(context).products[0].title);
                    return Expanded(
                      child: GridView.builder(
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 191 / 270,
                        ),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () =>
                              context.push(AppRoute.productsDetailScreen),
                          child: ProductItem(
                            product: GetProductCubit.get(context).products![index],
                          ),
                        ),
                        itemCount:GetProductCubit.get(context).products!.length,
                      ),
                    );
                  }
                  else{
                    return const Center(child: CircularProgressIndicator());
                  }

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
