import 'package:flutter/material.dart';

import '../../../../core/utils/cpmponents/offer_idndector.dart';

class ProductDetailImage extends StatelessWidget {
  const ProductDetailImage(
      {super.key, required this.images, required this.index});

  final List<String> images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AspectRatio(
          aspectRatio: 398 / 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              images[index],
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OfferImageIndicator(
            selectedIndex: index,
            numberIndicator: images.length,
          ),
        )
      ],
    );
  }
}
