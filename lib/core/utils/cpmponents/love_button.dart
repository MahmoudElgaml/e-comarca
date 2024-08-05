import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/core/services/snack_bar_services.dart';
import 'package:e_comarce_clean/features/wishlist_feature/presentation/manager/wishlist_cubit.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoveButton extends StatefulWidget {
   LoveButton({super.key, this.productId, this.wishlistCubit,required this.isSelected});

  final WishlistCubit? wishlistCubit;
  final String? productId;
   bool isSelected ;
  @override
  State<LoveButton> createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isSelected
            ? null
            : widget.wishlistCubit!.addToWishlist(widget.productId!);
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 30,
          height: 30,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 10,
                offset: Offset(0, 5),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
             widget.isSelected
                  ? Assets.imagesSelectedLoveIcon
                  : Assets.imagesUnselectedLobeButton,
            ),
          ),
        ),
      ),
    );
  }
}
