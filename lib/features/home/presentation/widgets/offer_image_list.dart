import 'package:e_comarce_clean/features/home/presentation/widgets/costume_offer_image.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class OfferImageList extends StatelessWidget {
  const OfferImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      animateFirstPage: true,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) =>  CostumeOfferImage( selectIndex: index,),
    );
  }
}
