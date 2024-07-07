import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      width: 100,
      height: 36,
      decoration: ShapeDecoration(
        color: const Color(0xFF004182),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            'Add to Cart',
            style: AppStyle.style14(context).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
