import 'package:e_comarce_clean/features/home/presentation/widgets/costume_appbar.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/widgets/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CostumeAppBar(),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 191 / 249,
                  ),
                  itemBuilder: (context, index) =>
                      const FittedBox(child: ProductItem()),
                  itemCount: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
