import 'package:e_comarce_clean/core/utils/cpmponents/offer_idndector.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class CostumeOfferImage extends StatelessWidget {
  const CostumeOfferImage({super.key, required this.selectIndex});

  static const List<String> offerImage = [
    Assets.imagesOfferImage1,
    Assets.imagesOfferImage2,
    Assets.imagesOfferImage3,
  ];
  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 398 / 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            offerImage[selectIndex],
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OfferImageIndicator(
              numberIndicator: 3,
              selectedIndex: selectIndex,
            ),
          )
        ],
      ),
    );
  }
}
